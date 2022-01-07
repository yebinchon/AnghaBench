
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int use_operand_p ;
typedef scalar_t__ tree ;
struct TYPE_4__ {int (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;
struct TYPE_3__ {int num_copy_prop; int num_const_prop; } ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ ASM_EXPR ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ SSA_NAME ;
 scalar_t__ SSA_NAME_VALUE (scalar_t__) ;
 int TDF_DETAILS ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ USE_FROM_PTR (int ) ;
 scalar_t__ VALUE_HANDLE ;
 scalar_t__ dump_file ;
 int dump_flags ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 scalar_t__ get_virtual_var (scalar_t__) ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;
 scalar_t__ is_gimple_reg (scalar_t__) ;
 TYPE_2__ lang_hooks ;
 scalar_t__ loop_depth_of_name (scalar_t__) ;
 int mark_stmt_modified (scalar_t__) ;
 int may_propagate_copy (scalar_t__,scalar_t__) ;
 int may_propagate_copy_into_asm (scalar_t__) ;
 TYPE_1__ opt_stats ;
 int print_generic_expr (scalar_t__,scalar_t__,int) ;
 int propagate_value (int ,scalar_t__) ;
 int stub1 (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
cprop_operand (tree stmt, use_operand_p op_p)
{
  bool may_have_exposed_new_symbols = 0;
  tree val;
  tree op = USE_FROM_PTR (op_p);




  val = SSA_NAME_VALUE (op);
  if (val && val != op && TREE_CODE (val) != VALUE_HANDLE)
    {
      tree op_type, val_type;






      if (!is_gimple_reg (op)
   && (TREE_CODE (val) != SSA_NAME
       || is_gimple_reg (val)
       || get_virtual_var (val) != get_virtual_var (op)))
 return 0;


      if (TREE_CODE (stmt) == ASM_EXPR
   && !may_propagate_copy_into_asm (op))
 return 0;


      op_type = TREE_TYPE (op);
      val_type = TREE_TYPE (val);



      while (POINTER_TYPE_P (op_type) && POINTER_TYPE_P (val_type))
 {
   op_type = TREE_TYPE (op_type);
   val_type = TREE_TYPE (val_type);
 }





      if (TREE_CODE (val) != SSA_NAME)
 {
   if (!lang_hooks.types_compatible_p (op_type, val_type))
     {
       val = fold_convert (TREE_TYPE (op), val);
       if (!is_gimple_min_invariant (val))
  return 0;
     }
 }




      else if (!may_propagate_copy (op, val))
 return 0;






      if (loop_depth_of_name (val) > loop_depth_of_name (op))
 return 0;


      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   fprintf (dump_file, "  Replaced '");
   print_generic_expr (dump_file, op, dump_flags);
   fprintf (dump_file, "' with %s '",
     (TREE_CODE (val) != SSA_NAME ? "constant" : "variable"));
   print_generic_expr (dump_file, val, dump_flags);
   fprintf (dump_file, "'\n");
 }



      if (TREE_CODE (val) == ADDR_EXPR
   || (POINTER_TYPE_P (TREE_TYPE (op))
       && is_gimple_min_invariant (val)))
 may_have_exposed_new_symbols = 1;

      if (TREE_CODE (val) != SSA_NAME)
 opt_stats.num_const_prop++;
      else
 opt_stats.num_copy_prop++;

      propagate_value (op_p, val);




      mark_stmt_modified (stmt);
    }
  return may_have_exposed_new_symbols;
}
