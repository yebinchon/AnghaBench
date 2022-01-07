
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbuf {struct lbuf* l_redrive_next; } ;


 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int current ;
 scalar_t__ freezing (int ) ;
 int jfs_info (char*) ;
 int kthread_should_stop () ;
 int lbmStartIO (struct lbuf*) ;
 struct lbuf* log_redrive_list ;
 int log_redrive_lock ;
 int refrigerator () ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int jfsIOWait(void *arg)
{
 struct lbuf *bp;

 do {
  spin_lock_irq(&log_redrive_lock);
  while ((bp = log_redrive_list)) {
   log_redrive_list = bp->l_redrive_next;
   bp->l_redrive_next = ((void*)0);
   spin_unlock_irq(&log_redrive_lock);
   lbmStartIO(bp);
   spin_lock_irq(&log_redrive_lock);
  }

  if (freezing(current)) {
   spin_unlock_irq(&log_redrive_lock);
   refrigerator();
  } else {
   set_current_state(TASK_INTERRUPTIBLE);
   spin_unlock_irq(&log_redrive_lock);
   schedule();
   __set_current_state(TASK_RUNNING);
  }
 } while (!kthread_should_stop());

 jfs_info("jfsIOWait being killed!");
 return 0;
}
