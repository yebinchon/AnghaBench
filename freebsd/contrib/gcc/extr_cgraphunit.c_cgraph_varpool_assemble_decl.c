
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_varpool_node {int alias; int decl; } ;


 int DECL_EXTERNAL (int ) ;
 int DECL_HAS_VALUE_EXPR_P (int ) ;
 int TREE_ASM_WRITTEN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int assemble_variable (int ,int ,int,int ) ;

__attribute__((used)) static bool
cgraph_varpool_assemble_decl (struct cgraph_varpool_node *node)
{
  tree decl = node->decl;

  if (!TREE_ASM_WRITTEN (decl)
      && !node->alias
      && !DECL_EXTERNAL (decl)
      && (TREE_CODE (decl) != VAR_DECL || !DECL_HAS_VALUE_EXPR_P (decl)))
    {
      assemble_variable (decl, 0, 1, 0);
      return TREE_ASM_WRITTEN (decl);
    }

  return 0;
}
