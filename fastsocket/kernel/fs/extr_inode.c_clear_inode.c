
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nrpages; int tree_lock; } ;
struct inode {int i_state; scalar_t__ i_cdev; int i_mode; scalar_t__ i_bdev; TYPE_3__* i_sb; TYPE_1__ i_data; } ;
struct TYPE_6__ {TYPE_2__* s_op; } ;
struct TYPE_5__ {int (* clear_inode ) (struct inode*) ;} ;


 int BUG_ON (int) ;
 int I_CLEAR ;
 int I_FREEING ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int bd_forget (struct inode*) ;
 int cd_forget (struct inode*) ;
 int inode_sync_wait (struct inode*) ;
 int invalidate_inode_buffers (struct inode*) ;
 int might_sleep () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct inode*) ;
 int vfs_dq_drop (struct inode*) ;

void clear_inode(struct inode *inode)
{
 might_sleep();
 invalidate_inode_buffers(inode);






 spin_lock_irq(&inode->i_data.tree_lock);
 BUG_ON(inode->i_data.nrpages);
 spin_unlock_irq(&inode->i_data.tree_lock);
 BUG_ON(!(inode->i_state & I_FREEING));
 BUG_ON(inode->i_state & I_CLEAR);
 inode_sync_wait(inode);
 vfs_dq_drop(inode);
 if (inode->i_sb->s_op->clear_inode)
  inode->i_sb->s_op->clear_inode(inode);
 if (S_ISBLK(inode->i_mode) && inode->i_bdev)
  bd_forget(inode);
 if (S_ISCHR(inode->i_mode) && inode->i_cdev)
  cd_forget(inode);
 inode->i_state = I_CLEAR;
}
