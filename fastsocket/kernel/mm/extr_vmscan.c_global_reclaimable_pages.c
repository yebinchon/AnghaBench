
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_ACTIVE_ANON ;
 int NR_ACTIVE_FILE ;
 int NR_INACTIVE_ANON ;
 int NR_INACTIVE_FILE ;
 int global_page_state (int ) ;
 scalar_t__ nr_swap_pages ;

unsigned long global_reclaimable_pages(void)
{
 int nr;

 nr = global_page_state(NR_ACTIVE_FILE) +
      global_page_state(NR_INACTIVE_FILE);

 if (nr_swap_pages > 0)
  nr += global_page_state(NR_ACTIVE_ANON) +
        global_page_state(NR_INACTIVE_ANON);

 return nr;
}
