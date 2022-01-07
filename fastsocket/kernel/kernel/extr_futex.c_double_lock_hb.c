
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_hash_bucket {int lock; } ;


 int SINGLE_DEPTH_NESTING ;
 int spin_lock (int *) ;
 int spin_lock_nested (int *,int ) ;

__attribute__((used)) static inline void
double_lock_hb(struct futex_hash_bucket *hb1, struct futex_hash_bucket *hb2)
{
 if (hb1 <= hb2) {
  spin_lock(&hb1->lock);
  if (hb1 < hb2)
   spin_lock_nested(&hb2->lock, SINGLE_DEPTH_NESTING);
 } else {
  spin_lock(&hb2->lock);
  spin_lock_nested(&hb1->lock, SINGLE_DEPTH_NESTING);
 }
}
