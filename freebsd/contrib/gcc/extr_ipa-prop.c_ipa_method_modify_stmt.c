
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_node {int dummy; } ;




 int PARM_DECL ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int ipa_method_formal_count (struct cgraph_node*) ;
 int ipa_method_modify_set (struct cgraph_node*,int,int) ;
 int ipa_method_tree_map (struct cgraph_node*,int ) ;

__attribute__((used)) static void
ipa_method_modify_stmt (struct cgraph_node *mt, tree stmt)
{
  int i, j;

  switch (TREE_CODE (stmt))
    {
    case 128:
      if (TREE_CODE (TREE_OPERAND (stmt, 0)) == PARM_DECL)
 {
   i = ipa_method_tree_map (mt, TREE_OPERAND (stmt, 0));
   if (i >= 0)
            ipa_method_modify_set (mt, i, 1);
 }
      break;
    case 129:

      for (j = 0; j < ipa_method_formal_count (mt); j++)
 ipa_method_modify_set (mt, j, 1);
      break;
    default:
      break;
    }
}
