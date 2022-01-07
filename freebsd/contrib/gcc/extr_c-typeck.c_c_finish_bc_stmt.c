
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int GOTO_EXPR ;
 scalar_t__ LABEL_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_INT_CST_LOW (scalar_t__) ;
 scalar_t__ add_stmt (int ) ;
 int block_may_fallthru (int ) ;
 int build1 (int ,int ,scalar_t__) ;
 scalar_t__ create_artificial_label () ;
 int cur_stmt_list ;
 int error (char*) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int void_type_node ;

tree
c_finish_bc_stmt (tree *label_p, bool is_break)
{
  bool skip;
  tree label = *label_p;
  skip = !block_may_fallthru (cur_stmt_list);

  if (!label)
    {
      if (!skip)
 *label_p = label = create_artificial_label ();
    }
  else if (TREE_CODE (label) == LABEL_DECL)
    ;
  else switch (TREE_INT_CST_LOW (label))
    {
    case 0:
      if (is_break)
 error ("break statement not within loop or switch");
      else
 error ("continue statement not within a loop");
      return NULL_TREE;

    case 1:
      gcc_assert (is_break);
      error ("break statement used with OpenMP for loop");
      return NULL_TREE;

    default:
      gcc_unreachable ();
    }

  if (skip)
    return NULL_TREE;

  return add_stmt (build1 (GOTO_EXPR, void_type_node, label));
}
