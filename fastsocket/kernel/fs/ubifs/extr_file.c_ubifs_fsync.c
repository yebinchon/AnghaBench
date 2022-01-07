
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_info {int dummy; } ;
struct inode {int i_state; TYPE_1__* i_sb; int i_ino; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {int (* write_inode ) (struct inode*,int *) ;} ;
struct TYPE_3__ {TYPE_2__* s_op; struct ubifs_info* s_fs_info; } ;


 int I_DIRTY_DATASYNC ;
 int dbg_gen (char*,int ) ;
 int stub1 (struct inode*,int *) ;
 int ubifs_sync_wbufs_by_inode (struct ubifs_info*,struct inode*) ;

int ubifs_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 struct inode *inode = dentry->d_inode;
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 int err;

 dbg_gen("syncing inode %lu", inode->i_ino);





 if (!datasync || (inode->i_state & I_DIRTY_DATASYNC)) {
  err = inode->i_sb->s_op->write_inode(inode, ((void*)0));
  if (err)
   return err;
 }





 err = ubifs_sync_wbufs_by_inode(c, inode);
 if (err)
  return err;

 return 0;
}
