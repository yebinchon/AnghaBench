
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_fattr {int f_mode; int attr; int f_blocks; int f_atime; int f_ctime; int f_mtime; int f_size; int f_gid; int f_uid; int f_ino; int f_nlink; } ;
struct inode {int i_mode; int i_blocks; int i_atime; int i_ctime; int i_mtime; int i_size; int i_gid; int i_uid; int i_ino; int i_nlink; } ;
struct TYPE_2__ {int attr; } ;


 TYPE_1__* SMB_I (struct inode*) ;
 int S_IWUSR ;
 int aRONLY ;
 int memset (struct smb_fattr*,int ,int) ;

void
smb_get_inode_attr(struct inode *inode, struct smb_fattr *fattr)
{
 memset(fattr, 0, sizeof(struct smb_fattr));
 fattr->f_mode = inode->i_mode;
 fattr->f_nlink = inode->i_nlink;
 fattr->f_ino = inode->i_ino;
 fattr->f_uid = inode->i_uid;
 fattr->f_gid = inode->i_gid;
 fattr->f_size = inode->i_size;
 fattr->f_mtime = inode->i_mtime;
 fattr->f_ctime = inode->i_ctime;
 fattr->f_atime = inode->i_atime;
 fattr->f_blocks = inode->i_blocks;

 fattr->attr = SMB_I(inode)->attr;



 if (fattr->f_mode & S_IWUSR)
  fattr->attr &= ~aRONLY;
 else
  fattr->attr |= aRONLY;
}
