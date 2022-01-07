
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_mode; } ;
struct file {struct dlmfs_filp_private* private_data; int f_flags; } ;
struct dlmfs_inode_private {int ip_lockres; } ;
struct dlmfs_filp_private {int fp_lock_level; } ;


 int BUG () ;
 struct dlmfs_inode_private* DLMFS_I (struct inode*) ;
 int EAGAIN ;
 int ENOMEM ;
 int ETXTBSY ;
 int GFP_NOFS ;
 int LKM_NOQUEUE ;
 int O_APPEND ;
 scalar_t__ S_ISDIR (int ) ;
 int dlmfs_decode_open_flags (int ,int*,int*) ;
 int kfree (struct dlmfs_filp_private*) ;
 struct dlmfs_filp_private* kmalloc (int,int ) ;
 int mlog (int ,char*,int ,int ) ;
 int user_dlm_cluster_lock (int *,int,int) ;

__attribute__((used)) static int dlmfs_file_open(struct inode *inode,
      struct file *file)
{
 int status, level, flags;
 struct dlmfs_filp_private *fp = ((void*)0);
 struct dlmfs_inode_private *ip;

 if (S_ISDIR(inode->i_mode))
  BUG();

 mlog(0, "open called on inode %lu, flags 0x%x\n", inode->i_ino,
  file->f_flags);

 status = dlmfs_decode_open_flags(file->f_flags, &level, &flags);
 if (status < 0)
  goto bail;



 file->f_flags &= ~O_APPEND;

 fp = kmalloc(sizeof(*fp), GFP_NOFS);
 if (!fp) {
  status = -ENOMEM;
  goto bail;
 }
 fp->fp_lock_level = level;

 ip = DLMFS_I(inode);

 status = user_dlm_cluster_lock(&ip->ip_lockres, level, flags);
 if (status < 0) {




  if (flags & LKM_NOQUEUE && status == -EAGAIN)
   status = -ETXTBSY;
  kfree(fp);
  goto bail;
 }

 file->private_data = fp;
bail:
 return status;
}
