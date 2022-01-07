
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_waiter {scalar_t__ woken; int list; int process; struct klist_node* node; } ;
struct klist_node {int dummy; } ;


 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int current ;
 int klist_del (struct klist_node*) ;
 int klist_remove_lock ;
 int klist_remove_waiters ;
 int list_add (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void klist_remove(struct klist_node *n)
{
 struct klist_waiter waiter;

 waiter.node = n;
 waiter.process = current;
 waiter.woken = 0;
 spin_lock(&klist_remove_lock);
 list_add(&waiter.list, &klist_remove_waiters);
 spin_unlock(&klist_remove_lock);

 klist_del(n);

 for (;;) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  if (waiter.woken)
   break;
  schedule();
 }
 __set_current_state(TASK_RUNNING);
}
