
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_node {int dummy; } ;
struct TYPE_2__ {int ipa_param_tree; } ;


 TYPE_1__* IPA_NODE_REF (struct cgraph_node*) ;
 int XCNEWVEC (int ,int ) ;
 int ipa_method_formal_count (struct cgraph_node*) ;
 int tree ;

__attribute__((used)) static inline void
ipa_method_tree_map_create (struct cgraph_node *mt)
{
  IPA_NODE_REF (mt)->ipa_param_tree =
    XCNEWVEC (tree, ipa_method_formal_count (mt));
}
