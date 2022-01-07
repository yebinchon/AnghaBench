
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {scalar_t__ totalswap; scalar_t__ freeswap; } ;
struct swap_info_struct {int flags; scalar_t__ inuse_pages; } ;


 int SWP_USED ;
 int SWP_WRITEOK ;
 scalar_t__ nr_swap_pages ;
 unsigned int nr_swapfiles ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct swap_info_struct** swap_info ;
 int swap_lock ;
 scalar_t__ total_swap_pages ;

void si_swapinfo(struct sysinfo *val)
{
 unsigned int type;
 unsigned long nr_to_be_unused = 0;

 spin_lock(&swap_lock);
 for (type = 0; type < nr_swapfiles; type++) {
  struct swap_info_struct *si = swap_info[type];

  if ((si->flags & SWP_USED) && !(si->flags & SWP_WRITEOK))
   nr_to_be_unused += si->inuse_pages;
 }
 val->freeswap = nr_swap_pages + nr_to_be_unused;
 val->totalswap = total_swap_pages + nr_to_be_unused;
 spin_unlock(&swap_lock);
}
