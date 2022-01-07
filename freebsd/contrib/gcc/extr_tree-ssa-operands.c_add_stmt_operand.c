
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int var_ann_t ;
typedef int tree ;
typedef TYPE_1__* stmt_ann_t ;
struct TYPE_4__ {int has_volatile_ops; } ;


 scalar_t__ DECL_P (int ) ;
 int NULL_TREE ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_VAR (int ) ;
 int SSA_VAR_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 int add_virtual_operand (int ,TYPE_1__*,int,int ,int ,int,int) ;
 int append_def (int *) ;
 int append_use (int *) ;
 int gcc_assert (int) ;
 int is_gimple_reg (int ) ;
 int opf_is_def ;
 int var_ann (int ) ;

__attribute__((used)) static void
add_stmt_operand (tree *var_p, stmt_ann_t s_ann, int flags)
{
  bool is_real_op;
  tree var, sym;
  var_ann_t v_ann;

  var = *var_p;
  gcc_assert (SSA_VAR_P (var));

  is_real_op = is_gimple_reg (var);



  gcc_assert (is_real_op || DECL_P (var));

  sym = (TREE_CODE (var) == SSA_NAME ? SSA_NAME_VAR (var) : var);
  v_ann = var_ann (sym);



  if (TREE_THIS_VOLATILE (sym) && s_ann)
    s_ann->has_volatile_ops = 1;

  if (is_real_op)
    {

      if (flags & opf_is_def)
 append_def (var_p);
      else
 append_use (var_p);
    }
  else
    add_virtual_operand (var, s_ann, flags, NULL_TREE, 0, -1, 0);
}
