
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {int flags; } ;
struct inode {int i_mode; } ;


 int S_ISDIR (int) ;
 int UBIFS_COMPR_FL ;
 int UBIFS_DIRSYNC_FL ;
 int UBIFS_SYNC_FL ;
 struct ubifs_inode* ubifs_inode (struct inode const*) ;

__attribute__((used)) static int inherit_flags(const struct inode *dir, int mode)
{
 int flags;
 const struct ubifs_inode *ui = ubifs_inode(dir);

 if (!S_ISDIR(dir->i_mode))




  return 0;

 flags = ui->flags & (UBIFS_COMPR_FL | UBIFS_SYNC_FL | UBIFS_DIRSYNC_FL);
 if (!S_ISDIR(mode))

  flags &= ~UBIFS_DIRSYNC_FL;
 return flags;
}
