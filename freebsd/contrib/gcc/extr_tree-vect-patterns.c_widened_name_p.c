
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int stmt_vec_info ;
typedef int loop_vec_info ;
typedef enum vect_def_type { ____Placeholder_vect_def_type } vect_def_type ;


 int INTEGRAL_TYPE_P (int ) ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ NOP_EXPR ;
 int STMT_VINFO_LOOP_VINFO (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_PRECISION (int ) ;
 scalar_t__ TYPE_UNSIGNED (int ) ;
 int vect_constant_def ;
 int vect_invariant_def ;
 int vect_is_simple_use (int ,int ,int *,int *,int*) ;
 int vect_loop_def ;
 int vinfo_for_stmt (int ) ;

__attribute__((used)) static bool
widened_name_p (tree name, tree use_stmt, tree *half_type, tree *def_stmt)
{
  tree dummy;
  loop_vec_info loop_vinfo;
  stmt_vec_info stmt_vinfo;
  tree expr;
  tree type = TREE_TYPE (name);
  tree oprnd0;
  enum vect_def_type dt;
  tree def;

  stmt_vinfo = vinfo_for_stmt (use_stmt);
  loop_vinfo = STMT_VINFO_LOOP_VINFO (stmt_vinfo);

  if (!vect_is_simple_use (name, loop_vinfo, def_stmt, &def, &dt))
    return 0;

  if (dt != vect_loop_def
      && dt != vect_invariant_def && dt != vect_constant_def)
    return 0;

  if (! *def_stmt)
    return 0;

  if (TREE_CODE (*def_stmt) != MODIFY_EXPR)
    return 0;

  expr = TREE_OPERAND (*def_stmt, 1);
  if (TREE_CODE (expr) != NOP_EXPR)
    return 0;

  oprnd0 = TREE_OPERAND (expr, 0);

  *half_type = TREE_TYPE (oprnd0);
  if (!INTEGRAL_TYPE_P (type) || !INTEGRAL_TYPE_P (*half_type)
      || (TYPE_UNSIGNED (type) != TYPE_UNSIGNED (*half_type))
      || (TYPE_PRECISION (type) < (TYPE_PRECISION (*half_type) * 2)))
    return 0;

  if (!vect_is_simple_use (oprnd0, loop_vinfo, &dummy, &dummy, &dt))
    return 0;

  if (dt != vect_invariant_def && dt != vect_constant_def
      && dt != vect_loop_def)
    return 0;

  return 1;
}
