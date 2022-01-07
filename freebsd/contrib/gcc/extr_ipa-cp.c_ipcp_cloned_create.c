
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int dummy; } ;


 int ipa_method_compute_tree_map (struct cgraph_node*) ;
 int ipa_method_formal_compute_count (struct cgraph_node*) ;
 int ipa_node_create (struct cgraph_node*) ;
 int ipcp_method_set_orig_node (struct cgraph_node*,struct cgraph_node*) ;

__attribute__((used)) static void
ipcp_cloned_create (struct cgraph_node *orig_node,
      struct cgraph_node *new_node)
{
  ipa_node_create (new_node);
  ipcp_method_set_orig_node (new_node, orig_node);
  ipa_method_formal_compute_count (new_node);
  ipa_method_compute_tree_map (new_node);
}
