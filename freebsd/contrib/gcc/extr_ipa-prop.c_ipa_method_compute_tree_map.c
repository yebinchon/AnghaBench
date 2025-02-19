
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct cgraph_node {scalar_t__ decl; } ;
struct TYPE_2__ {scalar_t__* ipa_param_tree; } ;


 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 TYPE_1__* IPA_NODE_REF (struct cgraph_node*) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int ipa_method_tree_map_create (struct cgraph_node*) ;

void
ipa_method_compute_tree_map (struct cgraph_node *mt)
{
  tree fndecl;
  tree fnargs;
  tree parm;
  int param_num;

  ipa_method_tree_map_create (mt);
  fndecl = mt->decl;
  fnargs = DECL_ARGUMENTS (fndecl);
  param_num = 0;
  for (parm = fnargs; parm; parm = TREE_CHAIN (parm))
    {
      IPA_NODE_REF (mt)->ipa_param_tree[param_num] = parm;
      param_num++;
    }
}
