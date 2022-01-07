
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_ADDRESSABLE (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_STATIC (int ) ;
 scalar_t__ VAR_DECL ;
 int save_expr (int ) ;

__attribute__((used)) static tree
builtin_save_expr (tree exp)
{
  if (TREE_ADDRESSABLE (exp) == 0
      && (TREE_CODE (exp) == PARM_DECL
   || (TREE_CODE (exp) == VAR_DECL && !TREE_STATIC (exp))))
    return exp;

  return save_expr (exp);
}
