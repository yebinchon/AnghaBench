
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugepage_subpool {scalar_t__ count; scalar_t__ used_hpages; int lock; } ;


 int kfree (struct hugepage_subpool*) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void unlock_or_release_subpool(struct hugepage_subpool *spool)
{
 bool free = (spool->count == 0) && (spool->used_hpages == 0);

 spin_unlock(&spool->lock);



 if (free)
  kfree(spool);
}
