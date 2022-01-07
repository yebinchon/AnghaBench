
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ member_0; scalar_t__ type; scalar_t__ min; scalar_t__ max; int * equiv; int * member_3; int member_2; int member_1; } ;
typedef TYPE_1__ value_range_t ;
typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int ABS_EXPR ;
 int BIT_NOT_EXPR ;
 int CONJ_EXPR ;
 int CONVERT_EXPR ;
 int FIX_CEIL_EXPR ;
 int FIX_FLOOR_EXPR ;
 int FIX_ROUND_EXPR ;
 int FIX_TRUNC_EXPR ;
 int FLOAT_EXPR ;
 int INTEGRAL_TYPE_P (scalar_t__) ;
 int NEGATE_EXPR ;
 int NON_LVALUE_EXPR ;
 int NOP_EXPR ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_OVERFLOW (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 int TYPE_OVERFLOW_UNDEFINED (scalar_t__) ;
 scalar_t__ TYPE_OVERFLOW_WRAPS (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 scalar_t__ TYPE_SIZE (scalar_t__) ;
 scalar_t__ TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ VR_ANTI_RANGE ;
 scalar_t__ VR_RANGE ;
 scalar_t__ VR_UNDEFINED ;
 scalar_t__ VR_VARYING ;
 scalar_t__ build_int_cst (scalar_t__,int ) ;
 int compare_values (scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ fold_unary_to_constant (int,scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 TYPE_1__* get_value_range (scalar_t__) ;
 scalar_t__ int_const_binop (int ,scalar_t__,int ,int ) ;
 int integer_one_node ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;
 scalar_t__ is_gimple_val (scalar_t__) ;
 scalar_t__ is_negative_overflow_infinity (scalar_t__) ;
 scalar_t__ is_overflow_infinity (scalar_t__) ;
 scalar_t__ is_positive_overflow_infinity (scalar_t__) ;
 scalar_t__ needs_overflow_infinity (scalar_t__) ;
 scalar_t__ negative_overflow_infinity (scalar_t__) ;
 scalar_t__ overflow_infinity_range_p (TYPE_1__*) ;
 scalar_t__ positive_overflow_infinity (scalar_t__) ;
 scalar_t__ range_includes_zero_p (TYPE_1__*) ;
 scalar_t__ range_is_nonnull (TYPE_1__*) ;
 scalar_t__ range_is_null (TYPE_1__*) ;
 int set_value_range (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int *) ;
 int set_value_range_to_nonnull (TYPE_1__*,scalar_t__) ;
 int set_value_range_to_null (TYPE_1__*,scalar_t__) ;
 int set_value_range_to_undefined (TYPE_1__*) ;
 int set_value_range_to_value (TYPE_1__*,scalar_t__,int *) ;
 int set_value_range_to_varying (TYPE_1__*) ;
 scalar_t__ supports_overflow_infinity (scalar_t__) ;
 scalar_t__ symbolic_range_p (TYPE_1__*) ;
 scalar_t__ tree_expr_nonzero_warnv_p (scalar_t__,int*) ;
 scalar_t__ tree_int_cst_equal (scalar_t__,scalar_t__) ;
 scalar_t__ tree_int_cst_sgn (scalar_t__) ;
 scalar_t__ vrp_val_is_min (scalar_t__) ;

__attribute__((used)) static void
extract_range_from_unary_expr (value_range_t *vr, tree expr)
{
  enum tree_code code = TREE_CODE (expr);
  tree min, max, op0;
  int cmp;
  value_range_t vr0 = { VR_UNDEFINED, NULL_TREE, NULL_TREE, ((void*)0) };



  if (code == FIX_TRUNC_EXPR
      || code == FIX_CEIL_EXPR
      || code == FIX_FLOOR_EXPR
      || code == FIX_ROUND_EXPR
      || code == FLOAT_EXPR
      || code == BIT_NOT_EXPR
      || code == NON_LVALUE_EXPR
      || code == CONJ_EXPR)
    {
      set_value_range_to_varying (vr);
      return;
    }



  op0 = TREE_OPERAND (expr, 0);
  if (TREE_CODE (op0) == SSA_NAME)
    vr0 = *(get_value_range (op0));
  else if (is_gimple_min_invariant (op0))
    set_value_range_to_value (&vr0, op0, ((void*)0));
  else
    set_value_range_to_varying (&vr0);


  if (vr0.type == VR_UNDEFINED)
    {
      set_value_range_to_undefined (vr);
      return;
    }



  if ((!INTEGRAL_TYPE_P (TREE_TYPE (op0))
       && !POINTER_TYPE_P (TREE_TYPE (op0)))
      || (vr0.type != VR_VARYING
   && symbolic_range_p (&vr0)))
    {
      set_value_range_to_varying (vr);
      return;
    }



  if (POINTER_TYPE_P (TREE_TYPE (expr)) || POINTER_TYPE_P (TREE_TYPE (op0)))
    {
      bool sop;

      sop = 0;
      if (range_is_nonnull (&vr0)
   || (tree_expr_nonzero_warnv_p (expr, &sop)
       && !sop))
 set_value_range_to_nonnull (vr, TREE_TYPE (expr));
      else if (range_is_null (&vr0))
 set_value_range_to_null (vr, TREE_TYPE (expr));
      else
 set_value_range_to_varying (vr);

      return;
    }


  if (code == NOP_EXPR || code == CONVERT_EXPR)
    {
      tree inner_type = TREE_TYPE (op0);
      tree outer_type = TREE_TYPE (expr);
      if ((vr0.type == VR_RANGE
    && !overflow_infinity_range_p (&vr0))
   || (vr0.type == VR_VARYING
       && TYPE_PRECISION (outer_type) > TYPE_PRECISION (inner_type)))
 {
   tree new_min, new_max, orig_min, orig_max;




   if (vr0.type == VR_RANGE)
     {
       orig_min = vr0.min;
       orig_max = vr0.max;
     }
   else
     {
       orig_min = TYPE_MIN_VALUE (inner_type);
       orig_max = TYPE_MAX_VALUE (inner_type);
     }

   new_min = fold_convert (outer_type, orig_min);
   new_max = fold_convert (outer_type, orig_max);




   if (is_gimple_val (new_min)
       && is_gimple_val (new_max)
       && tree_int_cst_equal (new_min, orig_min)
       && tree_int_cst_equal (new_max, orig_max)
       && (!is_overflow_infinity (new_min)
    || !is_overflow_infinity (new_max))
       && compare_values (new_min, new_max) <= 0
       && compare_values (new_min, new_max) >= -1)
     {
       set_value_range (vr, VR_RANGE, new_min, new_max, vr->equiv);
       return;
     }
 }







      if (TYPE_SIZE (inner_type) != TYPE_SIZE (outer_type)
   || TYPE_PRECISION (inner_type) != TYPE_PRECISION (outer_type))
 {
   set_value_range_to_varying (vr);
   return;
 }
    }





  if (vr0.type == VR_VARYING)
    {
      set_value_range_to_varying (vr);
      return;
    }



  if (code == NEGATE_EXPR
      && !TYPE_UNSIGNED (TREE_TYPE (expr)))
    {


      if (is_positive_overflow_infinity (vr0.max))
 min = negative_overflow_infinity (TREE_TYPE (expr));
      else if (is_negative_overflow_infinity (vr0.max))
 min = positive_overflow_infinity (TREE_TYPE (expr));
      else if (!vrp_val_is_min (vr0.max))
 min = fold_unary_to_constant (code, TREE_TYPE (expr), vr0.max);
      else if (needs_overflow_infinity (TREE_TYPE (expr)))
 {
   if (supports_overflow_infinity (TREE_TYPE (expr))
       && !is_overflow_infinity (vr0.min)
       && !vrp_val_is_min (vr0.min))
     min = positive_overflow_infinity (TREE_TYPE (expr));
   else
     {
       set_value_range_to_varying (vr);
       return;
     }
 }
      else
 min = TYPE_MIN_VALUE (TREE_TYPE (expr));

      if (is_positive_overflow_infinity (vr0.min))
 max = negative_overflow_infinity (TREE_TYPE (expr));
      else if (is_negative_overflow_infinity (vr0.min))
 max = positive_overflow_infinity (TREE_TYPE (expr));
      else if (!vrp_val_is_min (vr0.min))
 max = fold_unary_to_constant (code, TREE_TYPE (expr), vr0.min);
      else if (needs_overflow_infinity (TREE_TYPE (expr)))
 {
   if (supports_overflow_infinity (TREE_TYPE (expr)))
     max = positive_overflow_infinity (TREE_TYPE (expr));
   else
     {
       set_value_range_to_varying (vr);
       return;
     }
 }
      else
 max = TYPE_MIN_VALUE (TREE_TYPE (expr));
    }
  else if (code == NEGATE_EXPR
    && TYPE_UNSIGNED (TREE_TYPE (expr)))
    {
      if (!range_includes_zero_p (&vr0))
 {
   max = fold_unary_to_constant (code, TREE_TYPE (expr), vr0.min);
   min = fold_unary_to_constant (code, TREE_TYPE (expr), vr0.max);
 }
      else
 {
   if (range_is_null (&vr0))
     set_value_range_to_null (vr, TREE_TYPE (expr));
   else
     set_value_range_to_varying (vr);
   return;
 }
    }
  else if (code == ABS_EXPR
           && !TYPE_UNSIGNED (TREE_TYPE (expr)))
    {


      if (!TYPE_OVERFLOW_UNDEFINED (TREE_TYPE (expr))
   && ((vr0.type == VR_RANGE
        && vrp_val_is_min (vr0.min))
       || (vr0.type == VR_ANTI_RANGE
    && !vrp_val_is_min (vr0.min)
    && !range_includes_zero_p (&vr0))))
 {
   set_value_range_to_varying (vr);
   return;
 }



      if (is_overflow_infinity (vr0.min))
 min = positive_overflow_infinity (TREE_TYPE (expr));
      else if (!vrp_val_is_min (vr0.min))
 min = fold_unary_to_constant (code, TREE_TYPE (expr), vr0.min);
      else if (!needs_overflow_infinity (TREE_TYPE (expr)))
 min = TYPE_MAX_VALUE (TREE_TYPE (expr));
      else if (supports_overflow_infinity (TREE_TYPE (expr)))
 min = positive_overflow_infinity (TREE_TYPE (expr));
      else
 {
   set_value_range_to_varying (vr);
   return;
 }

      if (is_overflow_infinity (vr0.max))
 max = positive_overflow_infinity (TREE_TYPE (expr));
      else if (!vrp_val_is_min (vr0.max))
 max = fold_unary_to_constant (code, TREE_TYPE (expr), vr0.max);
      else if (!needs_overflow_infinity (TREE_TYPE (expr)))
 max = TYPE_MAX_VALUE (TREE_TYPE (expr));
      else if (supports_overflow_infinity (TREE_TYPE (expr)))
 max = positive_overflow_infinity (TREE_TYPE (expr));
      else
 {
   set_value_range_to_varying (vr);
   return;
 }

      cmp = compare_values (min, max);



      if (vr0.type == VR_ANTI_RANGE)
 {
   if (range_includes_zero_p (&vr0))
     {

       if (cmp != 1)
  max = min;





       if (TYPE_OVERFLOW_WRAPS (TREE_TYPE (expr)))
  {
    tree type_min_value = TYPE_MIN_VALUE (TREE_TYPE (expr));

    min = (vr0.min != type_min_value
    ? int_const_binop (PLUS_EXPR, type_min_value,
         integer_one_node, 0)
    : type_min_value);
  }
       else
  {
    if (overflow_infinity_range_p (&vr0))
      min = negative_overflow_infinity (TREE_TYPE (expr));
    else
      min = TYPE_MIN_VALUE (TREE_TYPE (expr));
  }
     }
   else
     {



       vr0.type = VR_RANGE;
       min = build_int_cst (TREE_TYPE (expr), 0);
       if (needs_overflow_infinity (TREE_TYPE (expr)))
  {
    if (supports_overflow_infinity (TREE_TYPE (expr)))
      max = positive_overflow_infinity (TREE_TYPE (expr));
    else
      {
        set_value_range_to_varying (vr);
        return;
      }
  }
       else
  max = TYPE_MAX_VALUE (TREE_TYPE (expr));
     }
 }



      else if (range_includes_zero_p (&vr0))
 {
   if (cmp == 1)
     max = min;
   min = build_int_cst (TREE_TYPE (expr), 0);
 }
      else
 {

   if (cmp == 1)
     {
       tree t = min;
       min = max;
       max = t;
     }
 }
    }
  else
    {

      min = fold_unary_to_constant (code, TREE_TYPE (expr), vr0.min);
      max = fold_unary_to_constant (code, TREE_TYPE (expr), vr0.max);

      if (needs_overflow_infinity (TREE_TYPE (expr)))
 {
   gcc_assert (code != NEGATE_EXPR && code != ABS_EXPR);



   if ((is_overflow_infinity (vr0.min)
        || TREE_OVERFLOW (min))
       && (is_overflow_infinity (vr0.max)
    || TREE_OVERFLOW (max)))
     {
       set_value_range_to_varying (vr);
       return;
     }

   if (is_overflow_infinity (vr0.min))
     min = vr0.min;
   else if (TREE_OVERFLOW (min))
     {
       if (supports_overflow_infinity (TREE_TYPE (expr)))
  min = (tree_int_cst_sgn (min) >= 0
         ? positive_overflow_infinity (TREE_TYPE (min))
         : negative_overflow_infinity (TREE_TYPE (min)));
       else
  {
    set_value_range_to_varying (vr);
    return;
  }
     }

   if (is_overflow_infinity (vr0.max))
     max = vr0.max;
   else if (TREE_OVERFLOW (max))
     {
       if (supports_overflow_infinity (TREE_TYPE (expr)))
  max = (tree_int_cst_sgn (max) >= 0
         ? positive_overflow_infinity (TREE_TYPE (max))
         : negative_overflow_infinity (TREE_TYPE (max)));
       else
  {
    set_value_range_to_varying (vr);
    return;
  }
     }
 }
    }

  cmp = compare_values (min, max);
  if (cmp == -2 || cmp == 1)
    {



      set_value_range_to_varying (vr);
    }
  else
    set_value_range (vr, vr0.type, min, max, ((void*)0));
}
