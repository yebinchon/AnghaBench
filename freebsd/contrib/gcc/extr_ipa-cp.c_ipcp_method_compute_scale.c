
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int count; struct cgraph_edge* callers; } ;
struct cgraph_edge {scalar_t__ count; struct cgraph_edge* next_caller; } ;
typedef int gcov_type ;


 int REG_BR_PROB_BASE ;
 int ipcp_method_set_scale (struct cgraph_node*,int) ;

__attribute__((used)) static void
ipcp_method_compute_scale (struct cgraph_node *node)
{
  gcov_type sum;
  struct cgraph_edge *cs;

  sum = 0;

  for (cs = node->callers; cs != ((void*)0); cs = cs->next_caller)
    sum += cs->count;
  if (node->count == 0)
    ipcp_method_set_scale (node, 0);
  else
    ipcp_method_set_scale (node, sum * REG_BR_PROB_BASE / node->count);
}
