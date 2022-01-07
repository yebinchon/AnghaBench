
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct inode {int i_state; } ;


 int DEFINE_WAIT_BIT (int ,int*,int ) ;
 int I_SYNC ;
 int TASK_UNINTERRUPTIBLE ;
 int __I_SYNC ;
 int __wait_on_bit (int *,int *,int ,int ) ;
 int * bit_waitqueue (int*,int ) ;
 int inode_lock ;
 int inode_wait ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wq ;

__attribute__((used)) static void inode_wait_for_writeback(struct inode *inode)
{
 DEFINE_WAIT_BIT(wq, &inode->i_state, __I_SYNC);
 wait_queue_head_t *wqh;

 wqh = bit_waitqueue(&inode->i_state, __I_SYNC);
 do {
  spin_unlock(&inode_lock);
  __wait_on_bit(wqh, &wq, inode_wait, TASK_UNINTERRUPTIBLE);
  spin_lock(&inode_lock);
 } while (inode->i_state & I_SYNC);
}
