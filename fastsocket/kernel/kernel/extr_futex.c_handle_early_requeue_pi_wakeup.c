
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union futex_key {int dummy; } futex_key ;
struct hrtimer_sleeper {int task; } ;
struct TYPE_2__ {int plist; } ;
struct futex_q {TYPE_1__ list; int * lock_ptr; int key; } ;
struct futex_hash_bucket {int lock; } ;


 int ERESTARTNOINTR ;
 int ETIMEDOUT ;
 int EWOULDBLOCK ;
 int WARN_ON (int ) ;
 int current ;
 int match_futex (int *,union futex_key*) ;
 int plist_del (TYPE_1__*,int *) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static inline
int handle_early_requeue_pi_wakeup(struct futex_hash_bucket *hb,
       struct futex_q *q, union futex_key *key2,
       struct hrtimer_sleeper *timeout)
{
 int ret = 0;
 if (!match_futex(&q->key, key2)) {
  WARN_ON(q->lock_ptr && (&hb->lock != q->lock_ptr));




  plist_del(&q->list, &q->list.plist);


  ret = -EWOULDBLOCK;
  if (timeout && !timeout->task)
   ret = -ETIMEDOUT;
  else if (signal_pending(current))
   ret = -ERESTARTNOINTR;
 }
 return ret;
}
