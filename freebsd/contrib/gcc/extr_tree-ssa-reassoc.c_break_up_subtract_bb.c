
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int block_stmt_iterator ;
typedef scalar_t__ basic_block ;
typedef int TREE_VISITED ;


 int CDI_DOMINATORS ;
 int INTEGRAL_TYPE_P (int ) ;
 scalar_t__ MINUS_EXPR ;
 scalar_t__ MODIFY_EXPR ;
 int SCALAR_FLOAT_TYPE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int break_up_subtract (int ,int *) ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (scalar_t__) ;
 int bsi_stmt (int ) ;
 scalar_t__ first_dom_son (int ,scalar_t__) ;
 int flag_unsafe_math_optimizations ;
 scalar_t__ next_dom_son (int ,scalar_t__) ;
 scalar_t__ should_break_up_subtract (int ) ;

__attribute__((used)) static void
break_up_subtract_bb (basic_block bb)
{
  block_stmt_iterator bsi;
  basic_block son;

  for (bsi = bsi_start (bb); !bsi_end_p (bsi); bsi_next (&bsi))
    {
      tree stmt = bsi_stmt (bsi);

      if (TREE_CODE (stmt) == MODIFY_EXPR)
 {
   tree lhs = TREE_OPERAND (stmt, 0);
   tree rhs = TREE_OPERAND (stmt, 1);

   TREE_VISITED (stmt) = 0;


   if ((!INTEGRAL_TYPE_P (TREE_TYPE (lhs))
        || !INTEGRAL_TYPE_P (TREE_TYPE (rhs)))
       && (!SCALAR_FLOAT_TYPE_P (TREE_TYPE (rhs))
    || !SCALAR_FLOAT_TYPE_P (TREE_TYPE(lhs))
    || !flag_unsafe_math_optimizations))
     continue;





   if (TREE_CODE (rhs) == MINUS_EXPR)
     if (should_break_up_subtract (stmt))
       break_up_subtract (stmt, &bsi);
 }
    }
  for (son = first_dom_son (CDI_DOMINATORS, bb);
       son;
       son = next_dom_son (CDI_DOMINATORS, son))
    break_up_subtract_bb (son);
}
