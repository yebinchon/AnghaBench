
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ NULL_TREE ;
 int STRIP_TYPE_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ c_dialect_cxx () ;
 int constant_expression_warning (scalar_t__) ;
 scalar_t__ decl_constant_value (scalar_t__) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold (scalar_t__) ;
 scalar_t__ perform_integral_promotions (scalar_t__) ;

__attribute__((used)) static tree
check_case_value (tree value)
{
  if (value == NULL_TREE)
    return value;



  STRIP_TYPE_NOPS (value);






  if (c_dialect_cxx ())
    {
      value = decl_constant_value (value);
      STRIP_TYPE_NOPS (value);
      value = fold (value);
    }

  if (TREE_CODE (value) == INTEGER_CST)

    value = perform_integral_promotions (value);
  else if (value != error_mark_node)
    {
      error ("case label does not reduce to an integer constant");
      value = error_mark_node;
    }

  constant_expression_warning (value);

  return value;
}
