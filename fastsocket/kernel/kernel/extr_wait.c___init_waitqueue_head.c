
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int task_list; int lock; } ;
typedef TYPE_1__ wait_queue_head_t ;
struct lock_class_key {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int lockdep_set_class (int *,struct lock_class_key*) ;
 int spin_lock_init (int *) ;

void __init_waitqueue_head(wait_queue_head_t *q, struct lock_class_key *key)
{
 spin_lock_init(&q->lock);
 lockdep_set_class(&q->lock, key);
 INIT_LIST_HEAD(&q->task_list);
}
