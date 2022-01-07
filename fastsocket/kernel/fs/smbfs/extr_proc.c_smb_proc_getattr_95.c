
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_sb_info {int dummy; } ;
struct smb_fattr {int f_size; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef int __u16 ;
struct TYPE_2__ {int flags; int fileid; } ;


 int SMB_F_LOCALWRITE ;
 TYPE_1__* SMB_I (struct inode*) ;
 scalar_t__ smb_is_open (struct inode*) ;
 int smb_proc_getattr_trans2_std (struct smb_sb_info*,struct dentry*,struct smb_fattr*) ;
 int smb_proc_seek (struct smb_sb_info*,int ,int,int ) ;

__attribute__((used)) static int
smb_proc_getattr_95(struct smb_sb_info *server, struct dentry *dir,
      struct smb_fattr *attr)
{
 struct inode *inode = dir->d_inode;
 int result;


 result = smb_proc_getattr_trans2_std(server, dir, attr);
 if (result < 0)
  goto out;







 if (inode && SMB_I(inode)->flags & SMB_F_LOCALWRITE &&
     smb_is_open(inode))
 {
  __u16 fileid = SMB_I(inode)->fileid;
  attr->f_size = smb_proc_seek(server, fileid, 2, 0);
 }

out:
 return result;
}
