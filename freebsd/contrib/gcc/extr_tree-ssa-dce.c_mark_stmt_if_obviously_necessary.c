
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* stmt_ann_t ;
struct TYPE_5__ {int succs; } ;
struct TYPE_4__ {scalar_t__ has_volatile_ops; } ;







 int EDGE_COUNT (int ) ;
 int EXC_PTR_EXPR ;
 int FILTER_EXPR ;






 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_SIDE_EFFECTS (int ) ;
 TYPE_3__* bb_for_stmt (int ) ;
 scalar_t__ flag_non_call_exceptions ;
 int gcc_assert (int) ;
 int get_call_expr_in (int ) ;
 scalar_t__ is_ctrl_altering_stmt (int ) ;
 scalar_t__ is_hidden_global_store (int ) ;
 int mark_stmt_necessary (int ,int) ;
 int simple_goto_p (int ) ;
 TYPE_1__* stmt_ann (int ) ;
 scalar_t__ tree_could_throw_p (int ) ;

__attribute__((used)) static void
mark_stmt_if_obviously_necessary (tree stmt, bool aggressive)
{
  stmt_ann_t ann;
  tree op;



  if (flag_non_call_exceptions
      && tree_could_throw_p (stmt))
    {
      mark_stmt_necessary (stmt, 1);
      return;
    }






  switch (TREE_CODE (stmt))
    {
    case 137:
    case 132:
    case 135:
      mark_stmt_necessary (stmt, 0);
      return;

    case 138:
    case 130:
    case 129:
      mark_stmt_necessary (stmt, 1);
      return;

    case 136:



      if (TREE_SIDE_EFFECTS (stmt))
 mark_stmt_necessary (stmt, 1);
      return;

    case 131:
      op = get_call_expr_in (stmt);
      if (op && TREE_SIDE_EFFECTS (op))
 {
   mark_stmt_necessary (stmt, 1);
   return;
 }




      if (TREE_CODE (TREE_OPERAND (stmt, 0)) == EXC_PTR_EXPR
   || TREE_CODE (TREE_OPERAND (stmt, 0)) == FILTER_EXPR)
 {
   mark_stmt_necessary (stmt, 1);
   return;
 }
      break;

    case 133:
      gcc_assert (!simple_goto_p (stmt));
      mark_stmt_necessary (stmt, 1);
      return;

    case 134:
      gcc_assert (EDGE_COUNT (bb_for_stmt (stmt)->succs) == 2);


    case 128:
      if (! aggressive)
 mark_stmt_necessary (stmt, 1);
      break;

    default:
      break;
    }

  ann = stmt_ann (stmt);




  if (ann->has_volatile_ops || is_ctrl_altering_stmt (stmt))
    {
      mark_stmt_necessary (stmt, 1);
      return;
    }

  if (is_hidden_global_store (stmt))
    {
      mark_stmt_necessary (stmt, 1);
      return;
    }

  return;
}
