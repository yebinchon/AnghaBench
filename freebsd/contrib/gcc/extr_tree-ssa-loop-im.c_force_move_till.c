
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct fmt_data {int loop; int orig_loop; } ;


 scalar_t__ ARRAY_REF ;
 scalar_t__ IS_EMPTY_STMT (int ) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int array_ref_element_size (int ) ;
 int array_ref_low_bound (int ) ;
 int force_move_till_expr (int ,int ,int ) ;
 int set_level (int ,int ,int ) ;

__attribute__((used)) static bool
force_move_till (tree ref, tree *index, void *data)
{
  tree stmt;
  struct fmt_data *fmt_data = data;

  if (TREE_CODE (ref) == ARRAY_REF)
    {
      tree step = array_ref_element_size (ref);
      tree lbound = array_ref_low_bound (ref);

      force_move_till_expr (step, fmt_data->orig_loop, fmt_data->loop);
      force_move_till_expr (lbound, fmt_data->orig_loop, fmt_data->loop);
    }

  if (TREE_CODE (*index) != SSA_NAME)
    return 1;

  stmt = SSA_NAME_DEF_STMT (*index);
  if (IS_EMPTY_STMT (stmt))
    return 1;

  set_level (stmt, fmt_data->orig_loop, fmt_data->loop);

  return 1;
}
