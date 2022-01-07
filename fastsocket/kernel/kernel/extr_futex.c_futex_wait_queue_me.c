
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_sleeper {int * task; int timer; } ;
struct futex_q {int list; } ;
struct futex_hash_bucket {int dummy; } ;


 int HRTIMER_MODE_ABS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int hrtimer_active (int *) ;
 int hrtimer_start_expires (int *,int ) ;
 scalar_t__ likely (int) ;
 int plist_node_empty (int *) ;
 int queue_me (struct futex_q*,struct futex_hash_bucket*) ;
 int schedule () ;
 int set_current_state (int ) ;

__attribute__((used)) static void futex_wait_queue_me(struct futex_hash_bucket *hb, struct futex_q *q,
    struct hrtimer_sleeper *timeout)
{






 set_current_state(TASK_INTERRUPTIBLE);
 queue_me(q, hb);


 if (timeout) {
  hrtimer_start_expires(&timeout->timer, HRTIMER_MODE_ABS);
  if (!hrtimer_active(&timeout->timer))
   timeout->task = ((void*)0);
 }





 if (likely(!plist_node_empty(&q->list))) {





  if (!timeout || timeout->task)
   schedule();
 }
 __set_current_state(TASK_RUNNING);
}
