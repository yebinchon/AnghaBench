
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
struct TYPE_4__ {int flags; } ;


 scalar_t__ COND_EXPR ;
 scalar_t__ COND_EXPR_COND (scalar_t__) ;
 int EDGE_FALSE_VALUE ;
 int EQ_EXPR ;
 int GT_EXPR ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 int LT_EXPR ;
 scalar_t__ SCALAR_FLOAT_TYPE_P (int ) ;
 scalar_t__ SSA_NAME_OCCURS_IN_ABNORMAL_PHI (scalar_t__) ;
 int SSA_NAME_VERSION (scalar_t__) ;
 int TEST_BIT (int ,int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAX_VALUE (int ) ;
 scalar_t__ TYPE_MIN_VALUE (int ) ;
 scalar_t__ boolean_false_node ;
 scalar_t__ boolean_true_node ;
 scalar_t__ bsi_stmt (int ) ;
 scalar_t__ compare_values (scalar_t__,scalar_t__) ;
 int found_in_subgraph ;
 int gcc_unreachable () ;
 int invert_tree_comparison (int,int ) ;
 int register_new_assert_for (scalar_t__,int,scalar_t__,int *,TYPE_1__*,int ) ;
 int swap_tree_comparison (scalar_t__) ;

__attribute__((used)) static bool
register_edge_assert_for (tree name, edge e, block_stmt_iterator si)
{
  tree val, stmt;
  enum tree_code comp_code;

  stmt = bsi_stmt (si);



  if (SSA_NAME_OCCURS_IN_ABNORMAL_PHI (name))
    return 0;



  if (!TEST_BIT (found_in_subgraph, SSA_NAME_VERSION (name)))
    return 0;




  if (TREE_CODE (stmt) == COND_EXPR)
    {



      tree cond = COND_EXPR_COND (stmt);
      bool is_else_edge = (e->flags & EDGE_FALSE_VALUE) != 0;


      if (cond == name)
 {



   comp_code = EQ_EXPR;
   val = (is_else_edge) ? boolean_false_node : boolean_true_node;
 }
      else
 {


   if (name == TREE_OPERAND (cond, 1))
     {



       comp_code = swap_tree_comparison (TREE_CODE (cond));
       val = TREE_OPERAND (cond, 0);
     }
   else
     {


       comp_code = TREE_CODE (cond);
       val = TREE_OPERAND (cond, 1);
     }



   if (is_else_edge)
     comp_code = invert_tree_comparison (comp_code, 0);





   if ((comp_code == GT_EXPR || comp_code == LT_EXPR)
       && (INTEGRAL_TYPE_P (TREE_TYPE (val))
    || SCALAR_FLOAT_TYPE_P (TREE_TYPE (val))))
     {
       tree min = TYPE_MIN_VALUE (TREE_TYPE (val));
       tree max = TYPE_MAX_VALUE (TREE_TYPE (val));

       if (comp_code == GT_EXPR && compare_values (val, max) == 0)
  return 0;

       if (comp_code == LT_EXPR && compare_values (val, min) == 0)
  return 0;
     }
 }
    }
  else
    {

      gcc_unreachable ();
    }

  register_new_assert_for (name, comp_code, val, ((void*)0), e, si);
  return 1;
}
