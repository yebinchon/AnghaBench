
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int plist; } ;
struct futex_q {int * lock_ptr; TYPE_1__ list; struct task_struct* task; } ;


 int TASK_NORMAL ;
 int get_task_struct (struct task_struct*) ;
 int plist_del (TYPE_1__*,int *) ;
 int put_task_struct (struct task_struct*) ;
 int smp_wmb () ;
 int wake_up_state (struct task_struct*,int ) ;

__attribute__((used)) static void wake_futex(struct futex_q *q)
{
 struct task_struct *p = q->task;
 get_task_struct(p);

 plist_del(&q->list, &q->list.plist);






 smp_wmb();
 q->lock_ptr = ((void*)0);

 wake_up_state(p, TASK_NORMAL);
 put_task_struct(p);
}
