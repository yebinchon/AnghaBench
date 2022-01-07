
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct stdarg_info {int va_list_vars; } ;


 scalar_t__ COMPONENT_REF ;
 int DECL_UID (scalar_t__) ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ SSA_NAME ;
 scalar_t__ SSA_NAME_VAR (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ bitmap_bit_p (int ,int ) ;
 scalar_t__ get_base_address (scalar_t__) ;
 int va_list_counter_op (struct stdarg_info*,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ va_list_fpr_counter_field ;
 scalar_t__ va_list_gpr_counter_field ;

__attribute__((used)) static bool
va_list_counter_struct_op (struct stdarg_info *si, tree ap, tree var,
      bool write_p)
{
  tree base;

  if (TREE_CODE (ap) != COMPONENT_REF
      || TREE_CODE (TREE_OPERAND (ap, 1)) != FIELD_DECL)
    return 0;

  if (TREE_CODE (var) != SSA_NAME
      || bitmap_bit_p (si->va_list_vars, DECL_UID (SSA_NAME_VAR (var))))
    return 0;

  base = get_base_address (ap);
  if (TREE_CODE (base) != VAR_DECL
      || !bitmap_bit_p (si->va_list_vars, DECL_UID (base)))
    return 0;

  if (TREE_OPERAND (ap, 1) == va_list_gpr_counter_field)
    va_list_counter_op (si, ap, var, 1, write_p);
  else if (TREE_OPERAND (ap, 1) == va_list_fpr_counter_field)
    va_list_counter_op (si, ap, var, 0, write_p);

  return 1;
}
