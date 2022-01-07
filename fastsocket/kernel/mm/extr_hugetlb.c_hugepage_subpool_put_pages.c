
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugepage_subpool {long used_hpages; int lock; } ;


 int spin_lock (int *) ;
 int unlock_or_release_subpool (struct hugepage_subpool*) ;

__attribute__((used)) static void hugepage_subpool_put_pages(struct hugepage_subpool *spool,
           long delta)
{
 if (!spool)
  return;

 spin_lock(&spool->lock);
 spool->used_hpages -= delta;


 unlock_or_release_subpool(spool);
}
