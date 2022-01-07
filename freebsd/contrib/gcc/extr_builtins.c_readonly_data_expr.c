
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ CONSTRUCTOR ;
 scalar_t__ STRING_CST ;
 int STRIP_NOPS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 scalar_t__ TREE_STATIC (int ) ;
 scalar_t__ VAR_DECL ;
 int decl_readonly_section (int ,int ) ;
 int get_base_address (int ) ;

__attribute__((used)) static bool
readonly_data_expr (tree exp)
{
  STRIP_NOPS (exp);

  if (TREE_CODE (exp) != ADDR_EXPR)
    return 0;

  exp = get_base_address (TREE_OPERAND (exp, 0));
  if (!exp)
    return 0;




  if (TREE_CODE (exp) == STRING_CST
      || TREE_CODE (exp) == CONSTRUCTOR
      || (TREE_CODE (exp) == VAR_DECL && TREE_STATIC (exp)))
    return decl_readonly_section (exp, 0);
  else
    return 0;
}
