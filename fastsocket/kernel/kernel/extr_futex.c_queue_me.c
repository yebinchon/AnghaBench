
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lock; } ;
struct TYPE_6__ {TYPE_1__ plist; } ;
struct futex_q {TYPE_4__* task; TYPE_2__ list; } ;
struct futex_hash_bucket {int lock; int chain; } ;
struct TYPE_7__ {int normal_prio; } ;


 int MAX_RT_PRIO ;
 TYPE_4__* current ;
 int min (int ,int ) ;
 int plist_add (TYPE_2__*,int *) ;
 int plist_node_init (TYPE_2__*,int) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void queue_me(struct futex_q *q, struct futex_hash_bucket *hb)
{
 int prio;
 prio = min(current->normal_prio, MAX_RT_PRIO);

 plist_node_init(&q->list, prio);



 plist_add(&q->list, &hb->chain);
 q->task = current;
 spin_unlock(&hb->lock);
}
