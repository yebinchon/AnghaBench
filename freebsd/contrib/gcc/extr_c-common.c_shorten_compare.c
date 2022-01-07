
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int COMPOUND_EXPR ;
 scalar_t__ DECIMAL_FLOAT_MODE_P (int ) ;
 int EQ_EXPR ;


 scalar_t__ INTEGER_CST ;
 int INT_CST_LT (scalar_t__,scalar_t__) ;
 int INT_CST_LT_UNSIGNED (scalar_t__,scalar_t__) ;


 int NE_EXPR ;
 scalar_t__ REAL_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CONSTANT (scalar_t__) ;
 int TREE_CONSTANT_OVERFLOW (scalar_t__) ;
 int TREE_INT_CST_HIGH (scalar_t__) ;
 int TREE_INT_CST_LOW (scalar_t__) ;
 int TREE_OVERFLOW (scalar_t__) ;
 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 int TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_int_cst_wide (scalar_t__,int ,int ) ;
 scalar_t__ c_common_signed_or_unsigned_type (int,scalar_t__) ;
 scalar_t__ c_common_signed_type (scalar_t__) ;
 scalar_t__ c_common_unsigned_type (scalar_t__) ;
 scalar_t__ common_type (scalar_t__,scalar_t__) ;
 scalar_t__ convert (scalar_t__,scalar_t__) ;
 int extra_warnings ;
 scalar_t__ force_fit_type (scalar_t__,int ,int ,int ) ;
 scalar_t__ get_narrower (scalar_t__,int*) ;
 int in_system_header ;
 scalar_t__ integer_zerop (scalar_t__) ;
 int real_zerop (scalar_t__) ;
 scalar_t__ truthvalue_false_node ;
 scalar_t__ truthvalue_true_node ;
 scalar_t__ truthvalue_type_node ;
 int warning (int ,char*) ;

tree
shorten_compare (tree *op0_ptr, tree *op1_ptr, tree *restype_ptr,
   enum tree_code *rescode_ptr)
{
  tree type;
  tree op0 = *op0_ptr;
  tree op1 = *op1_ptr;
  int unsignedp0, unsignedp1;
  int real1, real2;
  tree primop0, primop1;
  enum tree_code code = *rescode_ptr;




  primop0 = get_narrower (op0, &unsignedp0);
  primop1 = get_narrower (op1, &unsignedp1);




  if (op0 == primop0 && TREE_TYPE (op0) != *restype_ptr)
    unsignedp0 = TYPE_UNSIGNED (TREE_TYPE (op0));
  if (op1 == primop1 && TREE_TYPE (op1) != *restype_ptr)
    unsignedp1 = TYPE_UNSIGNED (TREE_TYPE (op1));


  real1 = TREE_CODE (TREE_TYPE (primop0)) == REAL_TYPE;
  real2 = TREE_CODE (TREE_TYPE (primop1)) == REAL_TYPE;





  if (TREE_CONSTANT (primop0)
      && !integer_zerop (primop1) && !real_zerop (primop1))
    {
      tree tem = primop0;
      int temi = unsignedp0;
      primop0 = primop1;
      primop1 = tem;
      tem = op0;
      op0 = op1;
      op1 = tem;
      *op0_ptr = op0;
      *op1_ptr = op1;
      unsignedp0 = unsignedp1;
      unsignedp1 = temi;
      temi = real1;
      real1 = real2;
      real2 = temi;

      switch (code)
 {
 case 128:
   code = 130;
   break;
 case 130:
   code = 128;
   break;
 case 129:
   code = 131;
   break;
 case 131:
   code = 129;
   break;
 default:
   break;
 }
      *rescode_ptr = code;
    }
  if (!real1 && !real2
      && TREE_CODE (primop1) == INTEGER_CST
      && TYPE_PRECISION (TREE_TYPE (primop0)) < TYPE_PRECISION (*restype_ptr))
    {
      int min_gt, max_gt, min_lt, max_lt;
      tree maxval, minval;

      int unsignedp = TYPE_UNSIGNED (*restype_ptr);
      tree val;

      type = c_common_signed_or_unsigned_type (unsignedp0,
            TREE_TYPE (primop0));

      maxval = TYPE_MAX_VALUE (type);
      minval = TYPE_MIN_VALUE (type);

      if (unsignedp && !unsignedp0)
 *restype_ptr = c_common_signed_type (*restype_ptr);

      if (TREE_TYPE (primop1) != *restype_ptr)
 {


   tree tmp = build_int_cst_wide (*restype_ptr,
      TREE_INT_CST_LOW (primop1),
      TREE_INT_CST_HIGH (primop1));

   primop1 = force_fit_type (tmp, 0, TREE_OVERFLOW (primop1),
        TREE_CONSTANT_OVERFLOW (primop1));
 }
      if (type != *restype_ptr)
 {
   minval = convert (*restype_ptr, minval);
   maxval = convert (*restype_ptr, maxval);
 }

      if (unsignedp && unsignedp0)
 {
   min_gt = INT_CST_LT_UNSIGNED (primop1, minval);
   max_gt = INT_CST_LT_UNSIGNED (primop1, maxval);
   min_lt = INT_CST_LT_UNSIGNED (minval, primop1);
   max_lt = INT_CST_LT_UNSIGNED (maxval, primop1);
 }
      else
 {
   min_gt = INT_CST_LT (primop1, minval);
   max_gt = INT_CST_LT (primop1, maxval);
   min_lt = INT_CST_LT (minval, primop1);
   max_lt = INT_CST_LT (maxval, primop1);
 }

      val = 0;

      if (code == NE_EXPR)
 {
   if (max_lt || min_gt)
     val = truthvalue_true_node;
 }
      else if (code == EQ_EXPR)
 {
   if (max_lt || min_gt)
     val = truthvalue_false_node;
 }
      else if (code == 128)
 {
   if (max_lt)
     val = truthvalue_true_node;
   if (!min_lt)
     val = truthvalue_false_node;
 }
      else if (code == 130)
 {
   if (min_gt)
     val = truthvalue_true_node;
   if (!max_gt)
     val = truthvalue_false_node;
 }
      else if (code == 129)
 {
   if (!max_gt)
     val = truthvalue_true_node;
   if (min_gt)
     val = truthvalue_false_node;
 }
      else if (code == 131)
 {
   if (!min_lt)
     val = truthvalue_true_node;
   if (max_lt)
     val = truthvalue_false_node;
 }
      if (unsignedp && !unsignedp0)
 {
   if (val != 0)
     switch (code)
       {
       case 128:
       case 131:
  primop1 = TYPE_MIN_VALUE (type);
  val = 0;
  break;

       case 129:
       case 130:
  primop1 = TYPE_MAX_VALUE (type);
  val = 0;
  break;

       default:
  break;
       }
   type = c_common_unsigned_type (type);
 }

      if (TREE_CODE (primop0) != INTEGER_CST)
 {
   if (val == truthvalue_false_node)
     warning (0, "comparison is always false due to limited range of data type");
   if (val == truthvalue_true_node)
     warning (0, "comparison is always true due to limited range of data type");
 }

      if (val != 0)
 {

   if (TREE_SIDE_EFFECTS (primop0))
     return build2 (COMPOUND_EXPR, TREE_TYPE (val), primop0, val);
   return val;
 }




    }



  else if (real1 && real2
    && (DECIMAL_FLOAT_MODE_P (TYPE_MODE (TREE_TYPE (primop0)))
        || DECIMAL_FLOAT_MODE_P (TYPE_MODE (TREE_TYPE (primop1)))))
    type = common_type (TREE_TYPE (primop0), TREE_TYPE (primop1));

  else if (real1 && real2
    && (TYPE_PRECISION (TREE_TYPE (primop0))
        == TYPE_PRECISION (TREE_TYPE (primop1))))
    type = TREE_TYPE (primop0);
  else if (unsignedp0 == unsignedp1 && real1 == real2
    && TYPE_PRECISION (TREE_TYPE (primop0)) < TYPE_PRECISION (*restype_ptr)
    && TYPE_PRECISION (TREE_TYPE (primop1)) < TYPE_PRECISION (*restype_ptr))
    {
      type = common_type (TREE_TYPE (primop0), TREE_TYPE (primop1));
      type = c_common_signed_or_unsigned_type (unsignedp0
            || TYPE_UNSIGNED (*restype_ptr),
            type);


      primop0
 = convert (c_common_signed_or_unsigned_type (unsignedp0,
           TREE_TYPE (primop0)),
     primop0);
      primop1
 = convert (c_common_signed_or_unsigned_type (unsignedp1,
           TREE_TYPE (primop1)),
     primop1);
    }
  else
    {


      type = *restype_ptr;
      primop0 = op0;
      primop1 = op1;

      if (!real1 && !real2 && integer_zerop (primop1)
   && TYPE_UNSIGNED (*restype_ptr))
 {
   tree value = 0;
   switch (code)
     {
     case 131:




       if (extra_warnings && !in_system_header
    && !(TREE_CODE (primop0) == INTEGER_CST
         && !TREE_OVERFLOW (convert (c_common_signed_type (type),
         primop0))))
  warning (0, "comparison of unsigned expression >= 0 is always true");
       value = truthvalue_true_node;
       break;

     case 128:
       if (extra_warnings && !in_system_header
    && !(TREE_CODE (primop0) == INTEGER_CST
         && !TREE_OVERFLOW (convert (c_common_signed_type (type),
         primop0))))
  warning (0, "comparison of unsigned expression < 0 is always false");
       value = truthvalue_false_node;
       break;

     default:
       break;
     }

   if (value != 0)
     {

       if (TREE_SIDE_EFFECTS (primop0))
  return build2 (COMPOUND_EXPR, TREE_TYPE (value),
          primop0, value);
       return value;
     }
 }
    }

  *op0_ptr = convert (type, primop0);
  *op1_ptr = convert (type, primop1);

  *restype_ptr = truthvalue_type_node;

  return 0;
}
