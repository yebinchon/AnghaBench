
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union futex_key {int dummy; } futex_key ;
struct TYPE_5__ {int * lock; } ;
struct TYPE_4__ {TYPE_3__ plist; } ;
struct futex_q {int task; TYPE_1__ list; int * lock_ptr; int * rt_waiter; union futex_key key; } ;
struct futex_hash_bucket {int lock; } ;


 int TASK_NORMAL ;
 int WARN_ON (int) ;
 int get_futex_key_refs (union futex_key*) ;
 int plist_del (TYPE_1__*,TYPE_3__*) ;
 int plist_node_empty (TYPE_1__*) ;
 int wake_up_state (int ,int ) ;

__attribute__((used)) static inline
void requeue_pi_wake_futex(struct futex_q *q, union futex_key *key,
      struct futex_hash_bucket *hb)
{
 get_futex_key_refs(key);
 q->key = *key;

 WARN_ON(plist_node_empty(&q->list));
 plist_del(&q->list, &q->list.plist);

 WARN_ON(!q->rt_waiter);
 q->rt_waiter = ((void*)0);

 q->lock_ptr = &hb->lock;




 wake_up_state(q->task, TASK_NORMAL);
}
