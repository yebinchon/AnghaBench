
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_3__ {scalar_t__ (* signed_type ) (scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;



 int BINARY_CLASS_P (scalar_t__) ;

 int CEIL_MOD_EXPR ;
 int COMPARISON_CLASS_P (scalar_t__) ;


 int EXPRESSION_CLASS_P (scalar_t__) ;

 int FLOOR_MOD_EXPR ;
 scalar_t__ GET_MODE_SIZE (int ) ;

 int const INTEGER_TYPE ;
 scalar_t__ NULL_TREE ;


 int ROUND_MOD_EXPR ;

 int const TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CODE_CLASS (int) ;
 int TREE_CONSTANT_OVERFLOW (scalar_t__) ;
 int TREE_INT_CST_HIGH (scalar_t__) ;
 int TREE_INT_CST_LOW (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_OVERFLOW (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;

 int TRUNC_MOD_EXPR ;
 int TYPE_IS_SIZETYPE (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 int TYPE_OVERFLOW_UNDEFINED (scalar_t__) ;
 int TYPE_OVERFLOW_WRAPS (scalar_t__) ;
 int TYPE_PRECISION (scalar_t__) ;
 int TYPE_UNSIGNED (scalar_t__) ;
 int UNARY_CLASS_P (scalar_t__) ;
 scalar_t__ build2 (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ const_binop (int const,scalar_t__,scalar_t__,int ) ;
 scalar_t__ extract_muldiv (scalar_t__,scalar_t__,int,scalar_t__,int*) ;
 scalar_t__ fold_build1 (int,scalar_t__,scalar_t__) ;
 scalar_t__ fold_build2 (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 int integer_zero_node ;
 scalar_t__ integer_zerop (scalar_t__) ;
 TYPE_2__ lang_hooks ;
 int multiple_of_p (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ negate_expr (scalar_t__) ;
 scalar_t__ omit_one_operand (scalar_t__,int ,scalar_t__) ;
 scalar_t__ size_one_node ;
 scalar_t__ stub1 (scalar_t__) ;
 scalar_t__ tcc_binary ;
 scalar_t__ tcc_unary ;
 int tree_int_cst_sgn (scalar_t__) ;

__attribute__((used)) static tree
extract_muldiv_1 (tree t, tree c, enum tree_code code, tree wide_type,
    bool *strict_overflow_p)
{
  tree type = TREE_TYPE (t);
  enum tree_code tcode = TREE_CODE (t);
  tree ctype = (wide_type != 0 && (GET_MODE_SIZE (TYPE_MODE (wide_type))
       > GET_MODE_SIZE (TYPE_MODE (type)))
  ? wide_type : type);
  tree t1, t2;
  int same_p = tcode == code;
  tree op0 = NULL_TREE, op1 = NULL_TREE;
  bool sub_strict_overflow_p;


  if (integer_zerop (c))
    return NULL_TREE;

  if (TREE_CODE_CLASS (tcode) == tcc_unary)
    op0 = TREE_OPERAND (t, 0);

  if (TREE_CODE_CLASS (tcode) == tcc_binary)
    op0 = TREE_OPERAND (t, 0), op1 = TREE_OPERAND (t, 1);



  switch (tcode)
    {
    case 140:


      if (code == 135
   || integer_zerop (const_binop (TRUNC_MOD_EXPR, t, c, 0)))
 return const_binop (code, fold_convert (ctype, t),
       fold_convert (ctype, c), 0);
      break;

    case 143: case 133: case 132:

      if ((COMPARISON_CLASS_P (op0)
    || UNARY_CLASS_P (op0)
    || BINARY_CLASS_P (op0)
    || EXPRESSION_CLASS_P (op0))


   && ((TYPE_UNSIGNED (TREE_TYPE (op0))
        && ! (TREE_CODE (TREE_TYPE (op0)) == INTEGER_TYPE
       && TYPE_IS_SIZETYPE (TREE_TYPE (op0)))
        && (GET_MODE_SIZE (TYPE_MODE (ctype))
            > GET_MODE_SIZE (TYPE_MODE (TREE_TYPE (op0)))))


       || (GET_MODE_SIZE (TYPE_MODE (type))
    < GET_MODE_SIZE (TYPE_MODE (TREE_TYPE (op0))))


       || (code != 135
    && (TYPE_UNSIGNED (ctype)
        != TYPE_UNSIGNED (TREE_TYPE (op0))))))
 break;




      if ((t2 = fold_convert (TREE_TYPE (op0), c)) != 0
   && TREE_CODE (t2) == 140
   && ! TREE_CONSTANT_OVERFLOW (t2)
   && (0 != (t1 = extract_muldiv (op0, t2, code,
      code == 135
      ? ctype : NULL_TREE,
      strict_overflow_p))))
 return t1;
      break;

    case 145:


      if (TYPE_UNSIGNED (ctype) && !TYPE_UNSIGNED (type))
        {
          tree cstype = (*lang_hooks.types.signed_type) (ctype);
          if ((t1 = extract_muldiv (op0, c, code, cstype, strict_overflow_p))
       != 0)
            {
              t1 = fold_build1 (tcode, cstype, fold_convert (cstype, t1));
              return fold_convert (ctype, t1);
            }
          break;
        }

      if (tree_int_cst_sgn (c) == -1)
 break;

    case 134:
      if ((t1 = extract_muldiv (op0, c, code, wide_type, strict_overflow_p))
   != 0)
 return fold_build1 (tcode, ctype, fold_convert (ctype, t1));
      break;

    case 136: case 138:


      if (TYPE_UNSIGNED (ctype) != TYPE_UNSIGNED (type))
 break;


      sub_strict_overflow_p = 0;
      if ((t1 = extract_muldiv (op0, c, code, wide_type,
    &sub_strict_overflow_p)) != 0
   && (t2 = extract_muldiv (op1, c, code, wide_type,
       &sub_strict_overflow_p)) != 0)
 {
   if (tree_int_cst_sgn (c) < 0)
     tcode = (tcode == 136 ? 138 : 136);
   if (sub_strict_overflow_p)
     *strict_overflow_p = 1;
   return fold_build2 (tcode, ctype, fold_convert (ctype, t1),
         fold_convert (ctype, t2));
 }
      break;

    case 139: case 129:






      if (TREE_CODE (op1) == 140
   && (tcode == 129 || TYPE_UNSIGNED (TREE_TYPE (op0)))


   && TYPE_PRECISION (TREE_TYPE (size_one_node)) > TREE_INT_CST_LOW (op1)
   && TREE_INT_CST_HIGH (op1) == 0
   && 0 != (t1 = fold_convert (ctype,
          const_binop (139,
         size_one_node,
         op1, 0)))
   && ! TREE_OVERFLOW (t1))
 return extract_muldiv (build2 (tcode == 139
           ? 135 : 141,
           ctype, fold_convert (ctype, op0), t1),
          c, code, wide_type, strict_overflow_p);
      break;

    case 131: case 137:




      sub_strict_overflow_p = 0;
      t1 = extract_muldiv (op0, c, code, wide_type, &sub_strict_overflow_p);
      t2 = extract_muldiv (op1, c, code, wide_type, &sub_strict_overflow_p);
      if (t1 != 0 && t2 != 0
   && (code == 135


       || (multiple_of_p (ctype, op0, c)
           && multiple_of_p (ctype, op1, c))))
 {
   if (sub_strict_overflow_p)
     *strict_overflow_p = 1;
   return fold_build2 (tcode, ctype, fold_convert (ctype, t1),
         fold_convert (ctype, t2));
 }



      if (tcode == 137)
 tcode = 131, op1 = negate_expr (op1);

      if (TREE_CODE (op1) != 140)
 break;




      if (tree_int_cst_sgn (op1) < 0 || tree_int_cst_sgn (c) < 0)
 {
   if (code == 144)
     code = 141;
   else if (code == 141)
     code = 144;
   else if (code != 135
     && code != CEIL_MOD_EXPR && code != FLOOR_MOD_EXPR)
     break;
 }



      if (code == 135
   || integer_zerop (const_binop (TRUNC_MOD_EXPR, op1, c, 0)))
 {
   op1 = const_binop (code, fold_convert (ctype, op1),
        fold_convert (ctype, c), 0);

   if (op1 == 0
       || (TREE_OVERFLOW (op1) && !TYPE_OVERFLOW_WRAPS (ctype)))
     break;
 }
      else
 break;




      if (TYPE_UNSIGNED (ctype)
   && ! (TREE_CODE (ctype) == INTEGER_TYPE && TYPE_IS_SIZETYPE (ctype))
   && ctype != type)
 break;



      if (t1 != 0 && (TREE_CODE (t1) != code || code == 135))
 return fold_build2 (tcode, ctype, fold_convert (ctype, t1), op1);




      if (code == 135)
 return fold_build2 (tcode, ctype,
       fold_build2 (code, ctype,
      fold_convert (ctype, op0),
      fold_convert (ctype, c)),
       op1);

      break;

    case 135:


      if ((code == TRUNC_MOD_EXPR || code == CEIL_MOD_EXPR
    || code == FLOOR_MOD_EXPR || code == ROUND_MOD_EXPR)
   && TREE_CODE (TREE_OPERAND (t, 1)) == 140
   && integer_zerop (const_binop (TRUNC_MOD_EXPR, op1, c, 0)))
 return omit_one_operand (type, integer_zero_node, op0);



    case 128: case 144: case 141:
    case 130: case 142:



      if (same_p
   && (t1 = extract_muldiv (op0, c, code, wide_type,
       strict_overflow_p)) != 0)
 return fold_build2 (tcode, ctype, fold_convert (ctype, t1),
       fold_convert (ctype, op1));
      else if (tcode == 135 && code == 135
        && (t1 = extract_muldiv (op1, c, code, wide_type,
     strict_overflow_p)) != 0)
 return fold_build2 (tcode, ctype, fold_convert (ctype, op0),
       fold_convert (ctype, t1));
      else if (TREE_CODE (op1) != 140)
 return 0;



      if (tcode == code
   && 0 != (t1 = const_binop (135, fold_convert (ctype, op1),
         fold_convert (ctype, c), 0))
   && ! TREE_OVERFLOW (t1))
 return fold_build2 (tcode, ctype, fold_convert (ctype, op0), t1);
      if ((TYPE_OVERFLOW_UNDEFINED (ctype)
    || (TREE_CODE (ctype) == INTEGER_TYPE && TYPE_IS_SIZETYPE (ctype)))
   && ((code == 135 && tcode == 142)
       || (tcode == 135
    && code != TRUNC_MOD_EXPR && code != CEIL_MOD_EXPR
    && code != FLOOR_MOD_EXPR && code != ROUND_MOD_EXPR)))
 {
   if (integer_zerop (const_binop (TRUNC_MOD_EXPR, op1, c, 0)))
     {
       if (TYPE_OVERFLOW_UNDEFINED (ctype))
  *strict_overflow_p = 1;
       return fold_build2 (tcode, ctype, fold_convert (ctype, op0),
      fold_convert (ctype,
      const_binop (128,
            op1, c, 0)));
     }
   else if (integer_zerop (const_binop (TRUNC_MOD_EXPR, c, op1, 0)))
     {
       if (TYPE_OVERFLOW_UNDEFINED (ctype))
  *strict_overflow_p = 1;
       return fold_build2 (code, ctype, fold_convert (ctype, op0),
      fold_convert (ctype,
      const_binop (128,
            c, op1, 0)));
     }
 }
      break;

    default:
      break;
    }

  return 0;
}
