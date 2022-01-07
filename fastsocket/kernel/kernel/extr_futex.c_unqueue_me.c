
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int plist; } ;
struct futex_q {int key; int pi_state; TYPE_1__ list; int * lock_ptr; } ;
typedef int spinlock_t ;


 int BUG_ON (int ) ;
 int WARN_ON (int ) ;
 int barrier () ;
 int drop_futex_key_refs (int *) ;
 int plist_del (TYPE_1__*,int *) ;
 int plist_node_empty (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int unqueue_me(struct futex_q *q)
{
 spinlock_t *lock_ptr;
 int ret = 0;


retry:
 lock_ptr = q->lock_ptr;
 barrier();
 if (lock_ptr != ((void*)0)) {
  spin_lock(lock_ptr);
  if (unlikely(lock_ptr != q->lock_ptr)) {
   spin_unlock(lock_ptr);
   goto retry;
  }
  WARN_ON(plist_node_empty(&q->list));
  plist_del(&q->list, &q->list.plist);

  BUG_ON(q->pi_state);

  spin_unlock(lock_ptr);
  ret = 1;
 }

 drop_futex_key_refs(&q->key);
 return ret;
}
