
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct cgraph_node {int dummy; } ;
struct TYPE_2__ {int * ipa_param_tree; } ;


 TYPE_1__* IPA_NODE_REF (struct cgraph_node*) ;

tree
ipa_method_get_tree (struct cgraph_node *mt, int i)
{
  return IPA_NODE_REF (mt)->ipa_param_tree[i];
}
