
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_q {int * lock_ptr; int key; } ;
struct futex_hash_bucket {int lock; } ;


 int get_futex_key_refs (int *) ;
 struct futex_hash_bucket* hash_futex (int *) ;
 int spin_lock (int *) ;

__attribute__((used)) static inline struct futex_hash_bucket *queue_lock(struct futex_q *q)
{
 struct futex_hash_bucket *hb;

 get_futex_key_refs(&q->key);
 hb = hash_futex(&q->key);
 q->lock_ptr = &hb->lock;

 spin_lock(&hb->lock);
 return hb;
}
