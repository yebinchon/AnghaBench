
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int dummy; } ;
struct cgraph_edge {struct cgraph_node* callee; } ;



struct cgraph_node *
ipa_callsite_callee (struct cgraph_edge *cs)
{
  return cs->callee;
}
