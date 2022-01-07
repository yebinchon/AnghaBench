
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_hash_bucket {int lock; } ;


 int spin_unlock (int *) ;

__attribute__((used)) static inline void
double_unlock_hb(struct futex_hash_bucket *hb1, struct futex_hash_bucket *hb2)
{
 spin_unlock(&hb1->lock);
 if (hb1 != hb2)
  spin_unlock(&hb2->lock);
}
