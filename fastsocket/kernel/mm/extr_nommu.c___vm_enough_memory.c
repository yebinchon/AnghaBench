
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int total_vm; } ;


 int ENOMEM ;
 int NR_FILE_PAGES ;
 int NR_SLAB_RECLAIMABLE ;
 scalar_t__ OVERCOMMIT_ALWAYS ;
 scalar_t__ OVERCOMMIT_GUESS ;
 unsigned long global_page_state (int ) ;
 unsigned long nr_free_pages () ;
 scalar_t__ nr_swap_pages ;
 unsigned long percpu_counter_read_positive (int *) ;
 scalar_t__ sysctl_overcommit_memory ;
 int sysctl_overcommit_ratio ;
 scalar_t__ total_swap_pages ;
 int totalram_pages ;
 unsigned long totalreserve_pages ;
 int vm_acct_memory (long) ;
 int vm_committed_as ;
 int vm_unacct_memory (long) ;

int __vm_enough_memory(struct mm_struct *mm, long pages, int cap_sys_admin)
{
 unsigned long free, allowed;

 vm_acct_memory(pages);




 if (sysctl_overcommit_memory == OVERCOMMIT_ALWAYS)
  return 0;

 if (sysctl_overcommit_memory == OVERCOMMIT_GUESS) {
  unsigned long n;

  free = global_page_state(NR_FILE_PAGES);
  free += nr_swap_pages;







  free += global_page_state(NR_SLAB_RECLAIMABLE);




  if (!cap_sys_admin)
   free -= free / 32;

  if (free > pages)
   return 0;





  n = nr_free_pages();




  if (n <= totalreserve_pages)
   goto error;
  else
   n -= totalreserve_pages;




  if (!cap_sys_admin)
   n -= n / 32;
  free += n;

  if (free > pages)
   return 0;

  goto error;
 }

 allowed = totalram_pages * sysctl_overcommit_ratio / 100;



 if (!cap_sys_admin)
  allowed -= allowed / 32;
 allowed += total_swap_pages;



 if (mm)
  allowed -= mm->total_vm / 32;

 if (percpu_counter_read_positive(&vm_committed_as) < allowed)
  return 0;

error:
 vm_unacct_memory(pages);

 return -ENOMEM;
}
