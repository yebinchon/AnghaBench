
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
struct TYPE_7__ {TYPE_1__* machine; } ;
struct TYPE_6__ {int num_gprs; int num_fprs; int stack_words; } ;
struct TYPE_5__ {int varargs_size; } ;
typedef TYPE_2__ CUMULATIVE_ARGS ;


 int COMPONENT_REF ;
 scalar_t__ EABI_FLOAT_VARARGS_P ;
 int EXPAND_NORMAL ;
 int MAX_ARGS_IN_REGISTERS ;
 int MODIFY_EXPR ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 int TREE_CHAIN (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_FIELDS (int ) ;
 int UNITS_PER_FPREG ;
 int UNITS_PER_FPVALUE ;
 int UNITS_PER_WORD ;
 int VOIDmode ;
 int build2 (int ,int ,int ,int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int build_int_cst (int ,int) ;
 TYPE_4__* cfun ;
 int const0_rtx ;
 TYPE_2__ current_function_args_info ;
 int expand_expr (int ,int ,int ,int ) ;
 int make_tree (int ,int ) ;
 int plus_constant (int ,int ) ;
 int std_expand_builtin_va_start (int ,int ) ;
 int va_list_type_node ;
 int virtual_incoming_args_rtx ;

void
mips_va_start (tree valist, rtx nextarg)
{
  if (EABI_FLOAT_VARARGS_P)
    {
      const CUMULATIVE_ARGS *cum;
      tree f_ovfl, f_gtop, f_ftop, f_goff, f_foff;
      tree ovfl, gtop, ftop, goff, foff;
      tree t;
      int gpr_save_area_size;
      int fpr_save_area_size;
      int fpr_offset;

      cum = &current_function_args_info;
      gpr_save_area_size
 = (MAX_ARGS_IN_REGISTERS - cum->num_gprs) * UNITS_PER_WORD;
      fpr_save_area_size
 = (MAX_ARGS_IN_REGISTERS - cum->num_fprs) * UNITS_PER_FPREG;

      f_ovfl = TYPE_FIELDS (va_list_type_node);
      f_gtop = TREE_CHAIN (f_ovfl);
      f_ftop = TREE_CHAIN (f_gtop);
      f_goff = TREE_CHAIN (f_ftop);
      f_foff = TREE_CHAIN (f_goff);

      ovfl = build3 (COMPONENT_REF, TREE_TYPE (f_ovfl), valist, f_ovfl,
       NULL_TREE);
      gtop = build3 (COMPONENT_REF, TREE_TYPE (f_gtop), valist, f_gtop,
       NULL_TREE);
      ftop = build3 (COMPONENT_REF, TREE_TYPE (f_ftop), valist, f_ftop,
       NULL_TREE);
      goff = build3 (COMPONENT_REF, TREE_TYPE (f_goff), valist, f_goff,
       NULL_TREE);
      foff = build3 (COMPONENT_REF, TREE_TYPE (f_foff), valist, f_foff,
       NULL_TREE);




      t = make_tree (TREE_TYPE (ovfl), virtual_incoming_args_rtx);
      if (cum->stack_words > 0)
 t = build2 (PLUS_EXPR, TREE_TYPE (ovfl), t,
      build_int_cst (NULL_TREE,
       cum->stack_words * UNITS_PER_WORD));
      t = build2 (MODIFY_EXPR, TREE_TYPE (ovfl), ovfl, t);
      expand_expr (t, const0_rtx, VOIDmode, EXPAND_NORMAL);


      t = make_tree (TREE_TYPE (gtop), virtual_incoming_args_rtx);
      t = build2 (MODIFY_EXPR, TREE_TYPE (gtop), gtop, t);
      expand_expr (t, const0_rtx, VOIDmode, EXPAND_NORMAL);




      t = make_tree (TREE_TYPE (ftop), virtual_incoming_args_rtx);
      fpr_offset = gpr_save_area_size + UNITS_PER_FPVALUE - 1;
      fpr_offset &= ~(UNITS_PER_FPVALUE - 1);
      if (fpr_offset)
 t = build2 (PLUS_EXPR, TREE_TYPE (ftop), t,
      build_int_cst (NULL_TREE, -fpr_offset));
      t = build2 (MODIFY_EXPR, TREE_TYPE (ftop), ftop, t);
      expand_expr (t, const0_rtx, VOIDmode, EXPAND_NORMAL);



      t = build2 (MODIFY_EXPR, TREE_TYPE (goff), goff,
    build_int_cst (NULL_TREE, gpr_save_area_size));
      expand_expr (t, const0_rtx, VOIDmode, EXPAND_NORMAL);



      t = build2 (MODIFY_EXPR, TREE_TYPE (foff), foff,
    build_int_cst (NULL_TREE, fpr_save_area_size));
      expand_expr (t, const0_rtx, VOIDmode, EXPAND_NORMAL);
    }
  else
    {
      nextarg = plus_constant (nextarg, -cfun->machine->varargs_size);
      std_expand_builtin_va_start (valist, nextarg);
    }
}
