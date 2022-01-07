
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int plist; } ;
struct futex_q {int key; int lock_ptr; int * pi_state; TYPE_1__ list; } ;


 int BUG_ON (int) ;
 int WARN_ON (int ) ;
 int drop_futex_key_refs (int *) ;
 int free_pi_state (int *) ;
 int plist_del (TYPE_1__*,int *) ;
 int plist_node_empty (TYPE_1__*) ;
 int spin_unlock (int ) ;

__attribute__((used)) static void unqueue_me_pi(struct futex_q *q)
{
 WARN_ON(plist_node_empty(&q->list));
 plist_del(&q->list, &q->list.plist);

 BUG_ON(!q->pi_state);
 free_pi_state(q->pi_state);
 q->pi_state = ((void*)0);

 spin_unlock(q->lock_ptr);

 drop_futex_key_refs(&q->key);
}
