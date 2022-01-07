
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {char* (* invalid_binary_op ) (int,scalar_t__,scalar_t__) ;} ;
typedef int HOST_WIDE_INT ;


 int ADDR_EXPR ;


 scalar_t__ BIT_NOT_EXPR ;

 int BLOCK_POINTER_TYPE ;

 int COMPLETE_TYPE_P (scalar_t__) ;
 int COMPLEX_TYPE ;
 int DECL_P (scalar_t__) ;
 int DECL_WEAK (scalar_t__) ;
 scalar_t__ ENUMERAL_TYPE ;

 int ERROR_MARK ;



 int FUNCTION_TYPE ;


 int HOST_BITS_PER_WIDE_INT ;
 scalar_t__ INTEGER_CST ;
 int INTEGER_TYPE ;
 int LABEL_DECL ;






 scalar_t__ NULL_TREE ;
 int OPT_Waddress ;
 int OPT_Wdiv_by_zero ;
 int OPT_Wfloat_equal ;
 int PARM_DECL ;

 int POINTER_TYPE ;
 int RDIV_EXPR ;
 int REAL_TYPE ;


 int STRIP_TYPE_NOPS (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;







 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 int TYPE_PRECISION (scalar_t__) ;
 int TYPE_SIZE (scalar_t__) ;
 int TYPE_UNSIGNED (scalar_t__) ;
 int VECTOR_TYPE ;
 int VOID_TYPE_P (scalar_t__) ;
 int binary_op_error (int,scalar_t__,scalar_t__) ;
 scalar_t__ c_common_signed_or_unsigned_type (int,scalar_t__) ;
 scalar_t__ c_common_signed_type (scalar_t__) ;
 scalar_t__ c_common_truthvalue_conversion (scalar_t__) ;
 scalar_t__ c_common_type (scalar_t__,scalar_t__) ;
 scalar_t__ common_pointer_type (scalar_t__,scalar_t__) ;
 scalar_t__ common_type (scalar_t__,scalar_t__) ;
 int comp_target_types (scalar_t__,scalar_t__) ;
 scalar_t__ compare_tree_int (scalar_t__,int) ;
 scalar_t__ convert (scalar_t__,scalar_t__) ;
 scalar_t__ convert_and_check (scalar_t__,scalar_t__) ;
 scalar_t__ default_conversion (scalar_t__) ;
 int error (char const*,char*) ;
 scalar_t__ error_mark_node ;
 int extra_warnings ;
 scalar_t__ fold_build2 (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_build2_initializer (int,scalar_t__,scalar_t__,scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ get_narrower (scalar_t__,int*) ;
 scalar_t__ host_integerp (scalar_t__,int ) ;
 scalar_t__ int_fits_type_p (scalar_t__,scalar_t__) ;
 int integer_all_onesp (scalar_t__) ;
 scalar_t__ integer_type_node ;
 int integer_zerop (scalar_t__) ;
 int null_pointer_constant_p (scalar_t__) ;
 int objc_compare_types (scalar_t__,scalar_t__,int,scalar_t__,char*) ;
 int pedantic ;
 int pedwarn (char*) ;
 scalar_t__ pointer_diff (scalar_t__,scalar_t__) ;
 scalar_t__ pointer_int_sum (int const,scalar_t__,scalar_t__) ;
 scalar_t__ ptr_type_node ;
 scalar_t__ require_constant_value ;
 int same_scalar_type_ignoring_signedness (scalar_t__,scalar_t__) ;
 scalar_t__ shorten_compare (scalar_t__*,scalar_t__*,scalar_t__*,int*) ;
 scalar_t__ skip_evaluation ;
 char* stub1 (int,scalar_t__,scalar_t__) ;
 TYPE_1__ targetm ;
 scalar_t__ tree_expr_nonnegative_warnv_p (scalar_t__,int*) ;
 int tree_int_cst_equal (int ,int ) ;
 int tree_int_cst_sgn (scalar_t__) ;
 int tree_low_cst (scalar_t__,int ) ;
 scalar_t__ warn_sign_compare ;
 int warning (int ,char*,...) ;

tree
build_binary_op (enum tree_code code, tree orig_op0, tree orig_op1,
   int convert_p)
{
  tree type0, type1;
  enum tree_code code0, code1;
  tree op0, op1;
  const char *invalid_op_diag;




  enum tree_code resultcode = code;



  tree result_type = ((void*)0);




  int converted = 0;



  tree build_type = 0;



  tree final_type = 0;







  int shorten = 0;




  int short_compare = 0;



  int short_shift = 0;


  int common = 0;


  bool objc_ok;

  if (convert_p)
    {
      op0 = default_conversion (orig_op0);
      op1 = default_conversion (orig_op1);
    }
  else
    {
      op0 = orig_op0;
      op1 = orig_op1;
    }

  type0 = TREE_TYPE (op0);
  type1 = TREE_TYPE (op1);



  code0 = TREE_CODE (type0);
  code1 = TREE_CODE (type1);


  STRIP_TYPE_NOPS (op0);
  STRIP_TYPE_NOPS (op1);




  if (code0 == ERROR_MARK || code1 == ERROR_MARK)
    return error_mark_node;

  if ((invalid_op_diag
       = targetm.invalid_binary_op (code, type0, type1)))
    {
      error (invalid_op_diag, "");
      return error_mark_node;
    }

  objc_ok = objc_compare_types (type0, type1, -3, NULL_TREE, "comparison");

  switch (code)
    {
    case 137:

      if (code0 == POINTER_TYPE && code1 == INTEGER_TYPE)
 return pointer_int_sum (137, op0, op1);
      else if (code1 == POINTER_TYPE && code0 == INTEGER_TYPE)
 return pointer_int_sum (137, op1, op0);
      else
 common = 1;
      break;

    case 140:


      if (code0 == POINTER_TYPE && code1 == POINTER_TYPE
   && comp_target_types (type0, type1))
 return pointer_diff (op0, op1);

      else if (code0 == POINTER_TYPE && code1 == INTEGER_TYPE)
 return pointer_int_sum (140, op0, op1);
      else
 common = 1;
      break;

    case 139:
      common = 1;
      break;

    case 134:
    case 150:
    case 147:
    case 136:
    case 148:


      if (skip_evaluation == 0 && integer_zerop (op1))
 warning (OPT_Wdiv_by_zero, "division by zero");

      if ((code0 == INTEGER_TYPE || code0 == REAL_TYPE
    || code0 == COMPLEX_TYPE || code0 == VECTOR_TYPE)
   && (code1 == INTEGER_TYPE || code1 == REAL_TYPE
       || code1 == COMPLEX_TYPE || code1 == VECTOR_TYPE))
 {
   enum tree_code tcode0 = code0, tcode1 = code1;

   if (code0 == COMPLEX_TYPE || code0 == VECTOR_TYPE)
     tcode0 = TREE_CODE (TREE_TYPE (TREE_TYPE (op0)));
   if (code1 == COMPLEX_TYPE || code1 == VECTOR_TYPE)
     tcode1 = TREE_CODE (TREE_TYPE (TREE_TYPE (op1)));

   if (!(tcode0 == INTEGER_TYPE && tcode1 == INTEGER_TYPE))
     resultcode = RDIV_EXPR;
   else





     shorten = (TYPE_UNSIGNED (TREE_TYPE (orig_op0))
         || (TREE_CODE (op1) == INTEGER_CST
      && !integer_all_onesp (op1)));
   common = 1;
 }
      break;

    case 153:
    case 152:
    case 151:
      if (code0 == INTEGER_TYPE && code1 == INTEGER_TYPE)
 shorten = -1;
      else if (code0 == VECTOR_TYPE && code1 == VECTOR_TYPE)
 common = 1;
      break;

    case 133:
    case 146:
      if (skip_evaluation == 0 && integer_zerop (op1))
 warning (OPT_Wdiv_by_zero, "division by zero");

      if (code0 == INTEGER_TYPE && code1 == INTEGER_TYPE)
 {




   shorten = (TYPE_UNSIGNED (TREE_TYPE (orig_op0))
       || (TREE_CODE (op1) == INTEGER_CST
    && !integer_all_onesp (op1)));
   common = 1;
 }
      break;

    case 132:
    case 130:
    case 131:
    case 129:
    case 128:
      if ((code0 == INTEGER_TYPE || code0 == POINTER_TYPE

    || code0 == BLOCK_POINTER_TYPE
    || code0 == REAL_TYPE || code0 == COMPLEX_TYPE)
   && (code1 == INTEGER_TYPE || code1 == POINTER_TYPE

       || code1 == BLOCK_POINTER_TYPE
       || code1 == REAL_TYPE || code1 == COMPLEX_TYPE))
 {



   result_type = integer_type_node;
   op0 = c_common_truthvalue_conversion (op0);
   op1 = c_common_truthvalue_conversion (op1);
   converted = 1;
 }
      break;





    case 135:
      if (code0 == INTEGER_TYPE && code1 == INTEGER_TYPE)
 {
   if (TREE_CODE (op1) == INTEGER_CST && skip_evaluation == 0)
     {
       if (tree_int_cst_sgn (op1) < 0)
  warning (0, "right shift count is negative");
       else
  {
    if (!integer_zerop (op1))
      short_shift = 1;

    if (compare_tree_int (op1, TYPE_PRECISION (type0)) >= 0)
      warning (0, "right shift count >= width of type");
  }
     }


   result_type = type0;


   if (TYPE_MAIN_VARIANT (TREE_TYPE (op1)) != integer_type_node)
     op1 = convert (integer_type_node, op1);

   converted = 1;
 }
      break;

    case 142:
      if (code0 == INTEGER_TYPE && code1 == INTEGER_TYPE)
 {
   if (TREE_CODE (op1) == INTEGER_CST && skip_evaluation == 0)
     {
       if (tree_int_cst_sgn (op1) < 0)
  warning (0, "left shift count is negative");

       else if (compare_tree_int (op1, TYPE_PRECISION (type0)) >= 0)
  warning (0, "left shift count >= width of type");
     }


   result_type = type0;


   if (TYPE_MAIN_VARIANT (TREE_TYPE (op1)) != integer_type_node)
     op1 = convert (integer_type_node, op1);

   converted = 1;
 }
      break;

    case 149:
    case 138:
      if (code0 == REAL_TYPE || code1 == REAL_TYPE)
 warning (OPT_Wfloat_equal,
   "comparing floating point with == or != is unsafe");


      build_type = integer_type_node;
      if ((code0 == INTEGER_TYPE || code0 == REAL_TYPE
    || code0 == COMPLEX_TYPE)
   && (code1 == INTEGER_TYPE || code1 == REAL_TYPE
       || code1 == COMPLEX_TYPE))
 short_compare = 1;

      else if ((code0 == POINTER_TYPE || code0 == BLOCK_POINTER_TYPE)
        && (code1 == POINTER_TYPE || code1 == BLOCK_POINTER_TYPE))

 {
   tree tt0 = TREE_TYPE (type0);
   tree tt1 = TREE_TYPE (type1);



   if (comp_target_types (type0, type1))
     result_type = common_pointer_type (type0, type1);

   else if (code1 == BLOCK_POINTER_TYPE && VOID_TYPE_P (tt0))
     ;
   else if (code0 == BLOCK_POINTER_TYPE && VOID_TYPE_P (tt1))
     ;

   else if (VOID_TYPE_P (tt0))
     {


       if (pedantic && !null_pointer_constant_p (orig_op0)
    && TREE_CODE (tt1) == FUNCTION_TYPE)
  pedwarn ("ISO C forbids comparison of %<void *%>"
    " with function pointer");
     }
   else if (VOID_TYPE_P (tt1))
     {
       if (pedantic && !null_pointer_constant_p (orig_op1)
    && TREE_CODE (tt0) == FUNCTION_TYPE)
  pedwarn ("ISO C forbids comparison of %<void *%>"
    " with function pointer");
     }
   else

     if (!objc_ok)

       {
  if (code0 == BLOCK_POINTER_TYPE || code1 == BLOCK_POINTER_TYPE)
    pedwarn ("comparison of distinct block types lacks a cast");
  else
    pedwarn ("comparison of distinct pointer types lacks a cast");
       }


   if (result_type == NULL_TREE)
     result_type = ptr_type_node;
 }
      else if (code0 == POINTER_TYPE && null_pointer_constant_p (orig_op1))
 {
   if (TREE_CODE (op0) == ADDR_EXPR
       && DECL_P (TREE_OPERAND (op0, 0))
       && (TREE_CODE (TREE_OPERAND (op0, 0)) == PARM_DECL
    || TREE_CODE (TREE_OPERAND (op0, 0)) == LABEL_DECL
    || !DECL_WEAK (TREE_OPERAND (op0, 0))))
     warning (OPT_Waddress, "the address of %qD will never be NULL",
       TREE_OPERAND (op0, 0));
   result_type = type0;
 }
      else if (code1 == POINTER_TYPE && null_pointer_constant_p (orig_op0))
 {
   if (TREE_CODE (op1) == ADDR_EXPR
       && DECL_P (TREE_OPERAND (op1, 0))
       && (TREE_CODE (TREE_OPERAND (op1, 0)) == PARM_DECL
    || TREE_CODE (TREE_OPERAND (op1, 0)) == LABEL_DECL
    || !DECL_WEAK (TREE_OPERAND (op1, 0))))
     warning (OPT_Waddress, "the address of %qD will never be NULL",
       TREE_OPERAND (op1, 0));
   result_type = type1;
 }
      else if (code0 == POINTER_TYPE && code1 == INTEGER_TYPE)
 {
   result_type = type0;
   pedwarn ("comparison between pointer and integer");
 }
      else if (code0 == INTEGER_TYPE && code1 == POINTER_TYPE)
 {
   result_type = type1;
   pedwarn ("comparison between pointer and integer");
 }

      else if (code0 == BLOCK_POINTER_TYPE && null_pointer_constant_p (orig_op1))
  result_type = type0;
      else if (code1 == BLOCK_POINTER_TYPE && null_pointer_constant_p (orig_op0))
  result_type = type1;

      break;

    case 143:
    case 145:
    case 141:
    case 144:
      build_type = integer_type_node;
      if ((code0 == INTEGER_TYPE || code0 == REAL_TYPE)
   && (code1 == INTEGER_TYPE || code1 == REAL_TYPE))
 short_compare = 1;
      else if (code0 == POINTER_TYPE && code1 == POINTER_TYPE)
 {
   if (comp_target_types (type0, type1))
     {
       result_type = common_pointer_type (type0, type1);
       if (!COMPLETE_TYPE_P (TREE_TYPE (type0))
    != !COMPLETE_TYPE_P (TREE_TYPE (type1)))
  pedwarn ("comparison of complete and incomplete pointers");
       else if (pedantic
         && TREE_CODE (TREE_TYPE (type0)) == FUNCTION_TYPE)
  pedwarn ("ISO C forbids ordered comparisons of pointers to functions");
     }
   else
     {
       result_type = ptr_type_node;
       pedwarn ("comparison of distinct pointer types lacks a cast");
     }
 }
      else if (code0 == POINTER_TYPE && null_pointer_constant_p (orig_op1))
 {
   result_type = type0;
   if (pedantic || extra_warnings)
     pedwarn ("ordered comparison of pointer with integer zero");
 }
      else if (code1 == POINTER_TYPE && null_pointer_constant_p (orig_op0))
 {
   result_type = type1;
   if (pedantic)
     pedwarn ("ordered comparison of pointer with integer zero");
 }
      else if (code0 == POINTER_TYPE && code1 == INTEGER_TYPE)
 {
   result_type = type0;
   pedwarn ("comparison between pointer and integer");
 }
      else if (code0 == INTEGER_TYPE && code1 == POINTER_TYPE)
 {
   result_type = type1;
   pedwarn ("comparison between pointer and integer");
 }
      break;

    default:
      gcc_unreachable ();
    }

  if (code0 == ERROR_MARK || code1 == ERROR_MARK)
    return error_mark_node;

  if (code0 == VECTOR_TYPE && code1 == VECTOR_TYPE
      && (!tree_int_cst_equal (TYPE_SIZE (type0), TYPE_SIZE (type1))
   || !same_scalar_type_ignoring_signedness (TREE_TYPE (type0),
          TREE_TYPE (type1))))
    {
      binary_op_error (code, type0, type1);
      return error_mark_node;
    }

  if ((code0 == INTEGER_TYPE || code0 == REAL_TYPE || code0 == COMPLEX_TYPE
       || code0 == VECTOR_TYPE)
      &&
      (code1 == INTEGER_TYPE || code1 == REAL_TYPE || code1 == COMPLEX_TYPE
       || code1 == VECTOR_TYPE))
    {
      int none_complex = (code0 != COMPLEX_TYPE && code1 != COMPLEX_TYPE);

      if (shorten || common || short_compare)
 result_type = c_common_type (type0, type1);
      if (shorten && none_complex)
 {
   int unsigned0, unsigned1;
   tree arg0, arg1;
   int uns;
   tree type;
   op0 = convert (result_type, op0);
   op1 = convert (result_type, op1);

   arg0 = get_narrower (op0, &unsigned0);
   arg1 = get_narrower (op1, &unsigned1);


   uns = TYPE_UNSIGNED (result_type);

   final_type = result_type;




   if ((TYPE_PRECISION (TREE_TYPE (op0))
        == TYPE_PRECISION (TREE_TYPE (arg0)))
       && TREE_TYPE (op0) != final_type)
     unsigned0 = TYPE_UNSIGNED (TREE_TYPE (op0));
   if ((TYPE_PRECISION (TREE_TYPE (op1))
        == TYPE_PRECISION (TREE_TYPE (arg1)))
       && TREE_TYPE (op1) != final_type)
     unsigned1 = TYPE_UNSIGNED (TREE_TYPE (op1));





   if (shorten == -1)
     uns = unsigned0;
   if ((TYPE_PRECISION (TREE_TYPE (arg0))
        < TYPE_PRECISION (result_type))
       && (TYPE_PRECISION (TREE_TYPE (arg1))
    == TYPE_PRECISION (TREE_TYPE (arg0)))
       && unsigned0 == unsigned1
       && (unsigned0 || !uns))
     result_type
       = c_common_signed_or_unsigned_type
       (unsigned0, common_type (TREE_TYPE (arg0), TREE_TYPE (arg1)));
   else if (TREE_CODE (arg0) == INTEGER_CST
     && (unsigned1 || !uns)
     && (TYPE_PRECISION (TREE_TYPE (arg1))
         < TYPE_PRECISION (result_type))
     && (type
         = c_common_signed_or_unsigned_type (unsigned1,
          TREE_TYPE (arg1)),
         int_fits_type_p (arg0, type)))
     result_type = type;
   else if (TREE_CODE (arg1) == INTEGER_CST
     && (unsigned0 || !uns)
     && (TYPE_PRECISION (TREE_TYPE (arg0))
         < TYPE_PRECISION (result_type))
     && (type
         = c_common_signed_or_unsigned_type (unsigned0,
          TREE_TYPE (arg0)),
         int_fits_type_p (arg1, type)))
     result_type = type;
 }



      if (short_shift)
 {
   int unsigned_arg;
   tree arg0 = get_narrower (op0, &unsigned_arg);

   final_type = result_type;

   if (arg0 == op0 && final_type == TREE_TYPE (op0))
     unsigned_arg = TYPE_UNSIGNED (TREE_TYPE (op0));

   if (TYPE_PRECISION (TREE_TYPE (arg0)) < TYPE_PRECISION (result_type)


       && compare_tree_int (op1, TYPE_PRECISION (TREE_TYPE (arg0))) < 0

       && (!TYPE_UNSIGNED (final_type) || unsigned_arg))
     {

       result_type
  = c_common_signed_or_unsigned_type (unsigned_arg,
          TREE_TYPE (arg0));

       if (TREE_TYPE (op0) != result_type)
  op0 = convert (result_type, op0);
       converted = 1;
     }
 }




      if (short_compare)
 {




   tree xop0 = op0, xop1 = op1, xresult_type = result_type;
   enum tree_code xresultcode = resultcode;
   tree val
     = shorten_compare (&xop0, &xop1, &xresult_type, &xresultcode);

   if (val != 0)
     return val;

   op0 = xop0, op1 = xop1;
   converted = 1;
   resultcode = xresultcode;

   if (warn_sign_compare && skip_evaluation == 0)
     {
       int op0_signed = !TYPE_UNSIGNED (TREE_TYPE (orig_op0));
       int op1_signed = !TYPE_UNSIGNED (TREE_TYPE (orig_op1));
       int unsignedp0, unsignedp1;
       tree primop0 = get_narrower (op0, &unsignedp0);
       tree primop1 = get_narrower (op1, &unsignedp1);

       xop0 = orig_op0;
       xop1 = orig_op1;
       STRIP_TYPE_NOPS (xop0);
       STRIP_TYPE_NOPS (xop1);
       if (!TYPE_UNSIGNED (result_type))
          ;

       else if (op0_signed == op1_signed)
          ;
       else
  {
    tree sop, uop;
    bool ovf;

    if (op0_signed)
      sop = xop0, uop = xop1;
    else
      sop = xop1, uop = xop0;






    if (tree_expr_nonnegative_warnv_p (sop, &ovf))
              ;



    else if (TREE_CODE (uop) == INTEGER_CST
      && (resultcode == 149 || resultcode == 138)
      && int_fits_type_p
      (uop, c_common_signed_type (result_type)))
              ;



    else if (TREE_CODE (uop) == INTEGER_CST
      && TREE_CODE (TREE_TYPE (uop)) == ENUMERAL_TYPE
      && int_fits_type_p
      (TYPE_MAX_VALUE (TREE_TYPE (uop)),
       c_common_signed_type (result_type)))
              ;
    else
      warning (0, "comparison between signed and unsigned");
  }
       if ((TREE_CODE (primop0) == BIT_NOT_EXPR)
    != (TREE_CODE (primop1) == BIT_NOT_EXPR))
  {
    if (TREE_CODE (primop0) == BIT_NOT_EXPR)
      primop0 = get_narrower (TREE_OPERAND (primop0, 0),
         &unsignedp0);
    else
      primop1 = get_narrower (TREE_OPERAND (primop1, 0),
         &unsignedp1);

    if (host_integerp (primop0, 0) || host_integerp (primop1, 0))
      {
        tree primop;
        HOST_WIDE_INT constant, mask;
        int unsignedp, bits;

        if (host_integerp (primop0, 0))
   {
     primop = primop1;
     unsignedp = unsignedp1;
     constant = tree_low_cst (primop0, 0);
   }
        else
   {
     primop = primop0;
     unsignedp = unsignedp0;
     constant = tree_low_cst (primop1, 0);
   }

        bits = TYPE_PRECISION (TREE_TYPE (primop));
        if (bits < TYPE_PRECISION (result_type)
     && bits < HOST_BITS_PER_WIDE_INT && unsignedp)
   {
     mask = (~(HOST_WIDE_INT) 0) << bits;
     if ((mask & constant) != mask)
       warning (0, "comparison of promoted ~unsigned with constant");
   }
      }
    else if (unsignedp0 && unsignedp1
      && (TYPE_PRECISION (TREE_TYPE (primop0))
          < TYPE_PRECISION (result_type))
      && (TYPE_PRECISION (TREE_TYPE (primop1))
          < TYPE_PRECISION (result_type)))
      warning (0, "comparison of promoted ~unsigned with unsigned");
  }
     }
 }
    }







  if (!result_type)
    {
      binary_op_error (code, TREE_TYPE (op0), TREE_TYPE (op1));
      return error_mark_node;
    }

  if (!converted)
    {
      if (TREE_TYPE (op0) != result_type)
 op0 = convert_and_check (result_type, op0);
      if (TREE_TYPE (op1) != result_type)
 op1 = convert_and_check (result_type, op1);



      if (TREE_CODE (op0) == ERROR_MARK || TREE_CODE (op1) == ERROR_MARK)
 return error_mark_node;
    }

  if (build_type == NULL_TREE)
    build_type = result_type;

  {

    tree result = require_constant_value ? fold_build2_initializer (resultcode,
            build_type,
            op0, op1)
      : fold_build2 (resultcode, build_type,
       op0, op1);

    if (final_type != 0)
      result = convert (final_type, result);
    return result;
  }
}
