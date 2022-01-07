
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int special_function_kind ;


 scalar_t__ DECL_BASE_DESTRUCTOR_P (int ) ;
 scalar_t__ DECL_COMPLETE_DESTRUCTOR_P (int ) ;
 scalar_t__ DECL_CONSTRUCTOR_P (int ) ;
 scalar_t__ DECL_CONV_FN_P (int ) ;
 scalar_t__ DECL_COPY_CONSTRUCTOR_P (int ) ;
 scalar_t__ DECL_DELETING_DESTRUCTOR_P (int ) ;
 scalar_t__ DECL_MAYBE_IN_CHARGE_DESTRUCTOR_P (int ) ;
 scalar_t__ DECL_OVERLOADED_OPERATOR_P (int ) ;
 scalar_t__ NOP_EXPR ;
 int sfk_assignment_operator ;
 int sfk_base_destructor ;
 int sfk_complete_destructor ;
 int sfk_constructor ;
 int sfk_conversion ;
 int sfk_copy_constructor ;
 int sfk_deleting_destructor ;
 int sfk_destructor ;
 int sfk_none ;

special_function_kind
special_function_p (tree decl)
{



  if (DECL_COPY_CONSTRUCTOR_P (decl))
    return sfk_copy_constructor;
  if (DECL_CONSTRUCTOR_P (decl))
    return sfk_constructor;
  if (DECL_OVERLOADED_OPERATOR_P (decl) == NOP_EXPR)
    return sfk_assignment_operator;
  if (DECL_MAYBE_IN_CHARGE_DESTRUCTOR_P (decl))
    return sfk_destructor;
  if (DECL_COMPLETE_DESTRUCTOR_P (decl))
    return sfk_complete_destructor;
  if (DECL_BASE_DESTRUCTOR_P (decl))
    return sfk_base_destructor;
  if (DECL_DELETING_DESTRUCTOR_P (decl))
    return sfk_deleting_destructor;
  if (DECL_CONV_FN_P (decl))
    return sfk_conversion;

  return sfk_none;
}
