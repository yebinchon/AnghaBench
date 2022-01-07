
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {struct cgraph_node* next; } ;


 int BOTTOM ;
 scalar_t__ TOP ;
 struct cgraph_node* cgraph_nodes ;
 int ipa_method_formal_count (struct cgraph_node*) ;
 scalar_t__ ipcp_cval_get_cvalue_type (int ) ;
 int ipcp_method_cval (struct cgraph_node*,int) ;
 int ipcp_method_cval_set_cvalue_type (struct cgraph_node*,int,int ) ;

__attribute__((used)) static bool
ipcp_after_propagate (void)
{
  int i, count;
  struct cgraph_node *node;
  bool prop_again;

  prop_again = 0;
  for (node = cgraph_nodes; node; node = node->next)
    {
      count = ipa_method_formal_count (node);
      for (i = 0; i < count; i++)
 if (ipcp_cval_get_cvalue_type (ipcp_method_cval (node, i)) == TOP)
   {
     prop_again = 1;
     ipcp_method_cval_set_cvalue_type (node, i, BOTTOM);
   }
    }
  return prop_again;
}
