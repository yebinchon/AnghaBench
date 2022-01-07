
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_3__ {scalar_t__ (* type_for_mode ) (int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;







 scalar_t__ INTEGER_CST ;
 int INTEGRAL_TYPE_P (scalar_t__) ;
 scalar_t__ IS_EXPR_CODE_CLASS (scalar_t__) ;







 scalar_t__ NULL_TREE ;

 int RSHIFT_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CODE_CLASS (int) ;
 int TREE_CODE_LENGTH (int) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_OVERFLOW (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;

 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 int TYPE_OVERFLOW_UNDEFINED (scalar_t__) ;
 int TYPE_PRECISION (scalar_t__) ;
 int TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ build2 (int,scalar_t__,int ,scalar_t__) ;
 scalar_t__ build_int_cst (scalar_t__,int) ;
 scalar_t__ fold_build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 int gcc_unreachable () ;
 int int_fits_type_p (scalar_t__,scalar_t__) ;
 scalar_t__ integer_one_node ;
 scalar_t__ integer_onep (scalar_t__) ;
 scalar_t__ integer_type_node ;
 scalar_t__ integer_zero_node ;
 int integer_zerop (scalar_t__) ;
 TYPE_2__ lang_hooks ;
 int merge_ranges (int*,scalar_t__*,scalar_t__*,int,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__) ;
 int negate_expr (scalar_t__) ;
 scalar_t__ range_binop (int const,scalar_t__,scalar_t__,int,scalar_t__,int) ;
 scalar_t__ stub1 (int ,int) ;
 scalar_t__ tcc_binary ;
 scalar_t__ tcc_comparison ;
 scalar_t__ tcc_expression ;
 scalar_t__ tcc_unary ;
 int tree_int_cst_equal (scalar_t__,scalar_t__) ;
 int tree_int_cst_lt (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
make_range (tree exp, int *pin_p, tree *plow, tree *phigh,
     bool *strict_overflow_p)
{
  enum tree_code code;
  tree arg0 = NULL_TREE, arg1 = NULL_TREE;
  tree exp_type = NULL_TREE, arg0_type = NULL_TREE;
  int in_p, n_in_p;
  tree low, high, n_low, n_high;







  in_p = 0;
  low = high = build_int_cst (TREE_TYPE (exp), 0);

  while (1)
    {
      code = TREE_CODE (exp);
      exp_type = TREE_TYPE (exp);

      if (IS_EXPR_CODE_CLASS (TREE_CODE_CLASS (code)))
 {
   if (TREE_CODE_LENGTH (code) > 0)
     arg0 = TREE_OPERAND (exp, 0);
   if (TREE_CODE_CLASS (code) == tcc_comparison
       || TREE_CODE_CLASS (code) == tcc_unary
       || TREE_CODE_CLASS (code) == tcc_binary)
     arg0_type = TREE_TYPE (arg0);
   if (TREE_CODE_CLASS (code) == tcc_binary
       || TREE_CODE_CLASS (code) == tcc_comparison
       || (TREE_CODE_CLASS (code) == tcc_expression
    && TREE_CODE_LENGTH (code) > 1))
     arg1 = TREE_OPERAND (exp, 1);
 }

      switch (code)
 {
 case 128:
   in_p = ! in_p, exp = arg0;
   continue;

 case 139: case 132:
 case 135: case 136: case 138: case 137:





   if (low == 0 || high == 0
       || ! integer_zerop (low) || ! integer_zerop (high)
       || TREE_CODE (arg1) != INTEGER_CST)
     break;

   switch (code)
     {
     case 132:
       low = high = arg1;
       break;
     case 139:
       in_p = ! in_p, low = high = arg1;
       break;
     case 137:
       low = 0, high = arg1;
       break;
     case 138:
       in_p = ! in_p, low = arg1, high = 0;
       break;
     case 135:
       low = arg1, high = 0;
       break;
     case 136:
       in_p = ! in_p, low = 0, high = arg1;
       break;
     default:
       gcc_unreachable ();
     }






   if (TYPE_UNSIGNED (arg0_type) && (low == 0 || high == 0))
     {
       if (! merge_ranges (&n_in_p, &n_low, &n_high,
      in_p, low, high, 1,
      build_int_cst (arg0_type, 0),
      NULL_TREE))
  break;

       in_p = n_in_p, low = n_low, high = n_high;




       if (high == 0 && low && ! integer_zerop (low))
  {
    in_p = ! in_p;
    high = range_binop (134, NULL_TREE, low, 0,
          integer_one_node, 0);
    low = build_int_cst (arg0_type, 0);
  }
     }

   exp = arg0;
   continue;

 case 133:

   n_low = range_binop (134, exp_type,
          build_int_cst (exp_type, 0),
          0, high, 1);
   n_high = range_binop (134, exp_type,
    build_int_cst (exp_type, 0),
    0, low, 0);
   low = n_low, high = n_high;
   exp = arg0;
   continue;

 case 141:

   exp = build2 (134, exp_type, negate_expr (arg0),
   build_int_cst (exp_type, 1));
   continue;

 case 129: case 134:
   if (TREE_CODE (arg1) != INTEGER_CST)
     break;



   if (!TYPE_UNSIGNED (arg0_type)
       && !TYPE_OVERFLOW_UNDEFINED (arg0_type))
     break;





   n_low = range_binop (code == 134 ? 129 : 134,
          arg0_type, low, 0, arg1, 0);
   n_high = range_binop (code == 134 ? 129 : 134,
    arg0_type, high, 1, arg1, 0);
   if ((n_low != 0 && TREE_OVERFLOW (n_low))
       || (n_high != 0 && TREE_OVERFLOW (n_high)))
     break;

   if (TYPE_OVERFLOW_UNDEFINED (arg0_type))
     *strict_overflow_p = 1;



   if (n_low && n_high && tree_int_cst_lt (n_high, n_low))
     {
       low = range_binop (129, arg0_type, n_high, 0,
     integer_one_node, 0);
       high = range_binop (134, arg0_type, n_low, 0,
      integer_one_node, 0);





       if (tree_int_cst_equal (n_low, low)
    && tree_int_cst_equal (n_high, high))
  low = high = 0;
       else
  in_p = ! in_p;
     }
   else
     low = n_low, high = n_high;

   exp = arg0;
   continue;

 case 130: case 131: case 140:
   if (TYPE_PRECISION (arg0_type) > TYPE_PRECISION (exp_type))
     break;

   if (! INTEGRAL_TYPE_P (arg0_type)
       || (low != 0 && ! int_fits_type_p (low, arg0_type))
       || (high != 0 && ! int_fits_type_p (high, arg0_type)))
     break;

   n_low = low, n_high = high;

   if (n_low != 0)
     n_low = fold_convert (arg0_type, n_low);

   if (n_high != 0)
     n_high = fold_convert (arg0_type, n_high);
   if (!TYPE_UNSIGNED (exp_type) && TYPE_UNSIGNED (arg0_type))
     {
       tree high_positive;
       tree equiv_type = lang_hooks.types.type_for_mode
  (TYPE_MODE (arg0_type), 1);




       high_positive
  = TYPE_MAX_VALUE (equiv_type) ? TYPE_MAX_VALUE (equiv_type)
  : TYPE_MAX_VALUE (arg0_type);

       if (TYPE_PRECISION (exp_type) == TYPE_PRECISION (arg0_type))
  high_positive = fold_build2 (RSHIFT_EXPR, arg0_type,
          fold_convert (arg0_type,
          high_positive),
          fold_convert (arg0_type,
          integer_one_node));




       if (low != 0)
  {
    if (! merge_ranges (&n_in_p, &n_low, &n_high,
          1, n_low, n_high, 1,
          fold_convert (arg0_type,
          integer_zero_node),
          high_positive))
      break;

    in_p = (n_in_p == in_p);
  }
       else
  {


    if (! merge_ranges (&n_in_p, &n_low, &n_high,
          0, n_low, n_high, 1,
          fold_convert (arg0_type,
          integer_zero_node),
          high_positive))
      break;

    in_p = (in_p != n_in_p);
  }
     }

   exp = arg0;
   low = n_low, high = n_high;
   continue;

 default:
   break;
 }

      break;
    }


  if (TREE_CODE (exp) == INTEGER_CST)
    {
      in_p = in_p == (integer_onep (range_binop (138, integer_type_node,
       exp, 0, low, 0))
        && integer_onep (range_binop (136, integer_type_node,
          exp, 1, high, 1)));
      low = high = 0;
      exp = 0;
    }

  *pin_p = in_p, *plow = low, *phigh = high;
  return exp;
}
