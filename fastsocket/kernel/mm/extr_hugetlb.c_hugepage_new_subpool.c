
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugepage_subpool {int count; long max_hpages; scalar_t__ used_hpages; int lock; } ;


 int GFP_KERNEL ;
 struct hugepage_subpool* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct hugepage_subpool *hugepage_new_subpool(long nr_blocks)
{
 struct hugepage_subpool *spool;

 spool = kmalloc(sizeof(*spool), GFP_KERNEL);
 if (!spool)
  return ((void*)0);

 spin_lock_init(&spool->lock);
 spool->count = 1;
 spool->max_hpages = nr_blocks;
 spool->used_hpages = 0;

 return spool;
}
