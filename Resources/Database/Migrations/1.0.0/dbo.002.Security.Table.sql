USE [{DATABASE_NAME}]
GO
/****** Object:  Table [dbo].[Security]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Security](
	[FavoriteId] [int] NOT NULL,
	[CredentialId] [int] NULL,
	[CredentialBaseId] [int] NULL,
 CONSTRAINT [PK_Security] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Security]  WITH CHECK ADD  CONSTRAINT [FK_Security_CredentialBase] FOREIGN KEY([CredentialBaseId])
REFERENCES [dbo].[CredentialBase] ([Id])
GO
ALTER TABLE [dbo].[Security] CHECK CONSTRAINT [FK_Security_CredentialBase]
GO
ALTER TABLE [dbo].[Security]  WITH CHECK ADD  CONSTRAINT [FK_Security_Favorites] FOREIGN KEY([FavoriteId])
REFERENCES [dbo].[Favorites] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Security] CHECK CONSTRAINT [FK_Security_Favorites]
GO
