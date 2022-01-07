
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int et_nodes ;
 int et_occurrences ;
 int free_alloc_pool_if_empty (int *) ;

void
et_free_pools (void)
{
  free_alloc_pool_if_empty (&et_occurrences);
  free_alloc_pool_if_empty (&et_nodes);
}
