
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int determine_dirtyable_memory () ;
 int ilog2 (unsigned long) ;
 int vm_dirty_bytes ;
 int vm_dirty_ratio ;

__attribute__((used)) static int calc_period_shift(void)
{
 unsigned long dirty_total;

 if (vm_dirty_bytes)
  dirty_total = vm_dirty_bytes / PAGE_SIZE;
 else
  dirty_total = (vm_dirty_ratio * determine_dirtyable_memory()) /
    100;
 if (dirty_total < 2)
  dirty_total = 2;

 return 2 + ilog2(dirty_total - 1);
}
