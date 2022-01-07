
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct inode {int i_state; } ;
struct TYPE_3__ {int wait; } ;


 int DEFINE_WAIT_BIT (TYPE_1__,int *,int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int __I_LOCK ;
 int * bit_waitqueue (int *,int ) ;
 int finish_wait (int *,int *) ;
 int inode_lock ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__ wait ;

__attribute__((used)) static void __wait_on_freeing_inode(struct inode *inode)
{
 wait_queue_head_t *wq;
 DEFINE_WAIT_BIT(wait, &inode->i_state, __I_LOCK);
 wq = bit_waitqueue(&inode->i_state, __I_LOCK);
 prepare_to_wait(wq, &wait.wait, TASK_UNINTERRUPTIBLE);
 spin_unlock(&inode_lock);
 schedule();
 finish_wait(wq, &wait.wait);
 spin_lock(&inode_lock);
}
