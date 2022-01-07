
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ IS_EMPTY_STMT (int ) ;
 scalar_t__ PARM_DECL ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 int SSA_NAME_VAR (int ) ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static bool
is_undefined_value (tree expr)
{
  return (TREE_CODE (expr) == SSA_NAME
          && IS_EMPTY_STMT (SSA_NAME_DEF_STMT (expr))

   && TREE_CODE (SSA_NAME_VAR (expr)) != PARM_DECL);
}
