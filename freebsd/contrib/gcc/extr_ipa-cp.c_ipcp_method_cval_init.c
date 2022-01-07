
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_node {int dummy; } ;


 int BOTTOM ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ SCALAR_FLOAT_TYPE_P (int ) ;
 int TOP ;
 int TREE_TYPE (int ) ;
 int ipa_method_formal_count (struct cgraph_node*) ;
 int ipa_method_get_tree (struct cgraph_node*,int) ;
 int ipcp_formal_create (struct cgraph_node*) ;
 int ipcp_method_cval_set_cvalue_type (struct cgraph_node*,int,int ) ;

__attribute__((used)) static void
ipcp_method_cval_init (struct cgraph_node *mt)
{
  int i;
  tree parm_tree;

  ipcp_formal_create (mt);
  for (i = 0; i < ipa_method_formal_count (mt); i++)
    {
      parm_tree = ipa_method_get_tree (mt, i);
      if (INTEGRAL_TYPE_P (TREE_TYPE (parm_tree))
   || SCALAR_FLOAT_TYPE_P (TREE_TYPE (parm_tree))
   || POINTER_TYPE_P (TREE_TYPE (parm_tree)))
 ipcp_method_cval_set_cvalue_type (mt, i, TOP);
      else
 ipcp_method_cval_set_cvalue_type (mt, i, BOTTOM);
    }
}
