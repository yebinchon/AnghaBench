
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;


 int CIFS_MOUNT_SERVER_INUM ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 void generic_delete_inode (struct inode*) ;
 void generic_drop_inode (struct inode*) ;

void cifs_drop_inode(struct inode *inode)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);

 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM)
  return generic_drop_inode(inode);

 return generic_delete_inode(inode);
}
