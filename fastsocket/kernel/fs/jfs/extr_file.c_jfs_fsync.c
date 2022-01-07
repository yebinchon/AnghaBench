
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_state; int i_sb; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int log; } ;


 int EIO ;
 int I_DIRTY ;
 int I_DIRTY_DATASYNC ;
 TYPE_1__* JFS_SBI (int ) ;
 int jfs_commit_inode (struct inode*,int) ;
 int jfs_flush_journal (int ,int) ;

int jfs_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 struct inode *inode = dentry->d_inode;
 int rc = 0;

 if (!(inode->i_state & I_DIRTY) ||
     (datasync && !(inode->i_state & I_DIRTY_DATASYNC))) {

  jfs_flush_journal(JFS_SBI(inode->i_sb)->log, 1);
  return rc;
 }

 rc |= jfs_commit_inode(inode, 1);

 return rc ? -EIO : 0;
}
