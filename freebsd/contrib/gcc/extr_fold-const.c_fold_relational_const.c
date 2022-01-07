
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ COMPLEX_CST ;



 scalar_t__ INTEGER_CST ;
 int INT_CST_LT (int ,int ) ;
 int INT_CST_LT_UNSIGNED (int ,int ) ;




 int NULL_TREE ;

 scalar_t__ REAL_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_IMAGPART (int ) ;
 int TREE_REALPART (int ) ;
 int * TREE_REAL_CST_PTR (int ) ;
 int TREE_TYPE (int ) ;
 int TRUTH_ANDIF_EXPR ;
 int TRUTH_ORIF_EXPR ;
 scalar_t__ TYPE_UNSIGNED (int ) ;






 int constant_boolean_node (int,int ) ;
 int flag_trapping_math ;
 int fold_build2 (int ,int ,int ,int ) ;
 int gcc_unreachable () ;
 int invert_tree_comparison (int,int) ;
 int real_compare (int,int const*,int const*) ;
 scalar_t__ real_isnan (int const*) ;
 int swap_tree_comparison (int) ;
 int tree_int_cst_equal (int ,int ) ;

__attribute__((used)) static tree
fold_relational_const (enum tree_code code, tree type, tree op0, tree op1)
{
  int result, invert;




  if (TREE_CODE (op0) == REAL_CST && TREE_CODE (op1) == REAL_CST)
    {
      const REAL_VALUE_TYPE *c0 = TREE_REAL_CST_PTR (op0);
      const REAL_VALUE_TYPE *c1 = TREE_REAL_CST_PTR (op1);


      if (real_isnan (c0) || real_isnan (c1))
 {
   switch (code)
     {
     case 141:
     case 134:
       result = 0;
       break;

     case 135:
     case 128:
     case 129:
     case 130:
     case 131:
     case 132:
     case 133:
              result = 1;
       break;

     case 136:
     case 138:
     case 139:
     case 140:
     case 137:
       if (flag_trapping_math)
  return NULL_TREE;
       result = 0;
       break;

     default:
       gcc_unreachable ();
     }

   return constant_boolean_node (result, type);
 }

      return constant_boolean_node (real_compare (code, c0, c1), type);
    }


  if (TREE_CODE (op0) == COMPLEX_CST && TREE_CODE (op1) == COMPLEX_CST)
    {
      tree rcond = fold_relational_const (code, type,
       TREE_REALPART (op0),
       TREE_REALPART (op1));
      tree icond = fold_relational_const (code, type,
       TREE_IMAGPART (op0),
       TREE_IMAGPART (op1));
      if (code == 141)
 return fold_build2 (TRUTH_ANDIF_EXPR, type, rcond, icond);
      else if (code == 135)
 return fold_build2 (TRUTH_ORIF_EXPR, type, rcond, icond);
      else
 return NULL_TREE;
    }
  if (code == 138 || code == 139)
    {
      tree tem = op0;
      op0 = op1;
      op1 = tem;
      code = swap_tree_comparison (code);
    }




  invert = 0;
  if (code == 135 || code == 140)
    {
      invert = 1;
      code = invert_tree_comparison (code, 0);
    }



  if (TREE_CODE (op0) == INTEGER_CST && TREE_CODE (op1) == INTEGER_CST)
    {
      if (code == 141)
 result = tree_int_cst_equal (op0, op1);
      else if (TYPE_UNSIGNED (TREE_TYPE (op0)))
 result = INT_CST_LT_UNSIGNED (op0, op1);
      else
 result = INT_CST_LT (op0, op1);
    }
  else
    return NULL_TREE;

  if (invert)
    result ^= 1;
  return constant_boolean_node (result, type);
}
