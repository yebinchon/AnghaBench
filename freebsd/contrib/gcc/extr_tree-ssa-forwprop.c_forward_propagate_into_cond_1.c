
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ BOOLEAN_TYPE ;
 scalar_t__ COMPARISON_CLASS_P (int ) ;
 scalar_t__ CONSTANT_CLASS_P (int ) ;
 scalar_t__ CONVERT_EXPR ;
 int EQ_EXPR ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ MINUS_EXPR ;
 scalar_t__ MODIFY_EXPR ;
 int NE_EXPR ;
 scalar_t__ NOP_EXPR ;
 int NULL_TREE ;
 scalar_t__ PLUS_EXPR ;
 int SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ SSA_NAME_OCCURS_IN_ABNORMAL_PHI (int ) ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TRUTH_NOT_EXPR ;
 int boolean_type_node ;
 int build2 (int,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 scalar_t__ has_single_use (int ) ;
 int int_const_binop (int,int ,int ,int ) ;
 scalar_t__ integer_onep (int ) ;
 int integer_zero_node ;
 scalar_t__ integer_zerop (int ) ;
 int invert_truthvalue (int ) ;
 int is_gimple_min_invariant (int ) ;
 int is_gimple_val (int ) ;
 scalar_t__ ssa_name_defined_by_comparison_p (int ) ;

__attribute__((used)) static tree
forward_propagate_into_cond_1 (tree cond, tree *test_var_p)
{
  tree new_cond = NULL_TREE;
  enum tree_code cond_code = TREE_CODE (cond);
  tree test_var = NULL_TREE;
  tree def;
  tree def_rhs;







  if (cond_code != SSA_NAME
      && !((cond_code == EQ_EXPR || cond_code == NE_EXPR)
    && TREE_CODE (TREE_OPERAND (cond, 0)) == SSA_NAME
    && CONSTANT_CLASS_P (TREE_OPERAND (cond, 1))
    && INTEGRAL_TYPE_P (TREE_TYPE (TREE_OPERAND (cond, 1)))))
    return NULL_TREE;


  if (cond_code == SSA_NAME)
    test_var = cond;
  else
    test_var = TREE_OPERAND (cond, 0);



  def = SSA_NAME_DEF_STMT (test_var);
  if (TREE_CODE (def) != MODIFY_EXPR)
    return NULL_TREE;

  def_rhs = TREE_OPERAND (def, 1);





  if (TREE_CODE (def_rhs) == PLUS_EXPR
      || TREE_CODE (def_rhs) == MINUS_EXPR)
    {
      tree op0 = TREE_OPERAND (def_rhs, 0);
      tree op1 = TREE_OPERAND (def_rhs, 1);



      if (TREE_CODE (op0) != SSA_NAME
   || !CONSTANT_CLASS_P (op1)
   || !INTEGRAL_TYPE_P (TREE_TYPE (op1)))
 return NULL_TREE;



      if (SSA_NAME_OCCURS_IN_ABNORMAL_PHI (op0))
 return NULL_TREE;

      if (has_single_use (test_var))
 {
   enum tree_code new_code;
   tree t;






   new_code = (TREE_CODE (def_rhs) == PLUS_EXPR
        ? MINUS_EXPR : PLUS_EXPR);
   t = int_const_binop (new_code, TREE_OPERAND (cond, 1), op1, 0);
   if (!is_gimple_val (t))
     return NULL_TREE;

   new_cond = build2 (cond_code, boolean_type_node, op0, t);
 }
    }



  else if (TREE_CODE (cond) == SSA_NAME
    || integer_zerop (TREE_OPERAND (cond, 1))
    || integer_onep (TREE_OPERAND (cond, 1)))
    {



      if (COMPARISON_CLASS_P (def_rhs))
 {
   tree op0 = TREE_OPERAND (def_rhs, 0);
   tree op1 = TREE_OPERAND (def_rhs, 1);



   if ((TREE_CODE (op0) != SSA_NAME
        && !is_gimple_min_invariant (op0))
       || (TREE_CODE (op1) != SSA_NAME
    && !is_gimple_min_invariant (op1)))
     return NULL_TREE;



   if (TREE_CODE (op0) == SSA_NAME
       && SSA_NAME_OCCURS_IN_ABNORMAL_PHI (op0))
     return NULL_TREE;



   if (TREE_CODE (op1) == SSA_NAME
       && SSA_NAME_OCCURS_IN_ABNORMAL_PHI (op1))
     return NULL_TREE;

   if (has_single_use (test_var))
     {

       new_cond = build2 (TREE_CODE (def_rhs),
     boolean_type_node, op0, op1);


       if ((cond_code == EQ_EXPR
     && integer_zerop (TREE_OPERAND (cond, 1)))
    || (cond_code == NE_EXPR
        && integer_onep (TREE_OPERAND (cond, 1))))
  {
    new_cond = invert_truthvalue (new_cond);




    if (!COMPARISON_CLASS_P (new_cond)
        && TREE_CODE (new_cond) != SSA_NAME)
      new_cond = NULL_TREE;
  }
     }
 }



      else if (TREE_CODE (def_rhs) == TRUTH_NOT_EXPR)
 {
   enum tree_code new_code;

   def_rhs = TREE_OPERAND (def_rhs, 0);


   if (TREE_CODE (def_rhs) != SSA_NAME
       && !is_gimple_min_invariant (def_rhs))
     return NULL_TREE;



   if (TREE_CODE (def_rhs) == SSA_NAME
       && SSA_NAME_OCCURS_IN_ABNORMAL_PHI (def_rhs))
     return NULL_TREE;

   if (cond_code == SSA_NAME
       || (cond_code == NE_EXPR
    && integer_zerop (TREE_OPERAND (cond, 1)))
       || (cond_code == EQ_EXPR
    && integer_onep (TREE_OPERAND (cond, 1))))
     new_code = EQ_EXPR;
   else
     new_code = NE_EXPR;

   new_cond = build2 (new_code, boolean_type_node, def_rhs,
        fold_convert (TREE_TYPE (def_rhs),
        integer_zero_node));
 }




      else if (TREE_CODE (def_rhs) == NOP_EXPR
        || TREE_CODE (def_rhs) == CONVERT_EXPR)
 {
   tree outer_type;
   tree inner_type;

   outer_type = TREE_TYPE (def_rhs);
   inner_type = TREE_TYPE (TREE_OPERAND (def_rhs, 0));

   if ((TREE_CODE (outer_type) == BOOLEAN_TYPE
        && INTEGRAL_TYPE_P (inner_type))
       || (TREE_CODE (inner_type) == BOOLEAN_TYPE
    && INTEGRAL_TYPE_P (outer_type)))
     ;
   else if (INTEGRAL_TYPE_P (outer_type)
     && INTEGRAL_TYPE_P (inner_type)
     && TREE_CODE (TREE_OPERAND (def_rhs, 0)) == SSA_NAME
     && ssa_name_defined_by_comparison_p (TREE_OPERAND (def_rhs,
              0)))
     ;
   else
     return NULL_TREE;



   if (TREE_CODE (TREE_OPERAND (def_rhs, 0)) == SSA_NAME
       && SSA_NAME_OCCURS_IN_ABNORMAL_PHI (TREE_OPERAND
        (def_rhs, 0)))
     return NULL_TREE;

   if (has_single_use (test_var))
     {
       enum tree_code new_code;
       tree new_arg;

       if (cond_code == SSA_NAME
    || (cond_code == NE_EXPR
        && integer_zerop (TREE_OPERAND (cond, 1)))
    || (cond_code == EQ_EXPR
        && integer_onep (TREE_OPERAND (cond, 1))))
  new_code = NE_EXPR;
       else
  new_code = EQ_EXPR;

       new_arg = TREE_OPERAND (def_rhs, 0);
       new_cond = build2 (new_code, boolean_type_node, new_arg,
     fold_convert (TREE_TYPE (new_arg),
            integer_zero_node));
     }
 }
    }

  *test_var_p = test_var;
  return new_cond;
}
