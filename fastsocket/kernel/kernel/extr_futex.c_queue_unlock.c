
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_q {int key; } ;
struct futex_hash_bucket {int lock; } ;


 int drop_futex_key_refs (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
queue_unlock(struct futex_q *q, struct futex_hash_bucket *hb)
{
 spin_unlock(&hb->lock);
 drop_futex_key_refs(&q->key);
}
