
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union futex_key {int dummy; } futex_key ;
struct TYPE_4__ {int * lock; } ;
struct TYPE_5__ {TYPE_1__ plist; } ;
struct futex_q {union futex_key key; TYPE_2__ list; int * lock_ptr; } ;
struct futex_hash_bucket {int lock; int chain; } ;


 int get_futex_key_refs (union futex_key*) ;
 scalar_t__ likely (int) ;
 int plist_add (TYPE_2__*,int *) ;
 int plist_del (TYPE_2__*,int *) ;

__attribute__((used)) static inline
void requeue_futex(struct futex_q *q, struct futex_hash_bucket *hb1,
     struct futex_hash_bucket *hb2, union futex_key *key2)
{





 if (likely(&hb1->chain != &hb2->chain)) {
  plist_del(&q->list, &hb1->chain);
  plist_add(&q->list, &hb2->chain);
  q->lock_ptr = &hb2->lock;



 }
 get_futex_key_refs(key2);
 q->key = *key2;
}
