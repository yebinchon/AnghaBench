
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_FREE_PAGES ;
 int NR_INACTIVE_FILE ;
 unsigned long min (unsigned long,int) ;
 int node_page_state (int ,int ) ;
 int numa_node_id () ;

unsigned long max_sane_readahead(unsigned long nr)
{
 return min(nr, (node_page_state(numa_node_id(), NR_INACTIVE_FILE)
  + node_page_state(numa_node_id(), NR_FREE_PAGES)) / 2);
}
