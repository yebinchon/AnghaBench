
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cgraph_varpool_first_unanalyzed_node ;
 int * cgraph_varpool_last_needed_node ;
 int * cgraph_varpool_nodes_queue ;

void
cgraph_varpool_reset_queue (void)
{
  cgraph_varpool_last_needed_node = ((void*)0);
  cgraph_varpool_nodes_queue = ((void*)0);
  cgraph_varpool_first_unanalyzed_node = ((void*)0);
}
