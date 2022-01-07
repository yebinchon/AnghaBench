
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugepage_subpool {scalar_t__ used_hpages; scalar_t__ max_hpages; int lock; } ;


 int ENOMEM ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int hugepage_subpool_get_pages(struct hugepage_subpool *spool,
          long delta)
{
 int ret = 0;

 if (!spool)
  return 0;

 spin_lock(&spool->lock);
 if ((spool->used_hpages + delta) <= spool->max_hpages) {
  spool->used_hpages += delta;
 } else {
  ret = -ENOMEM;
 }
 spin_unlock(&spool->lock);

 return ret;
}
