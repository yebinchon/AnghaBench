
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * pi_blocked_on; int pi_lock; int pi_waiters; } ;


 int plist_head_init (int *,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void rt_mutex_init_task(struct task_struct *p)
{
 spin_lock_init(&p->pi_lock);




}
