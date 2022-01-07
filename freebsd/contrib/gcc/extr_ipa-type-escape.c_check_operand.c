
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int check_function_parameter_and_return_types (int ,int) ;
 int has_proper_scope_for_analysis (int ) ;

__attribute__((used)) static void
check_operand (tree t)
{
  if (!t) return;



  if (TREE_CODE (t) == FUNCTION_DECL)
    check_function_parameter_and_return_types (t, 1);

  else if (TREE_CODE (t) == VAR_DECL)
    has_proper_scope_for_analysis (t);
}
