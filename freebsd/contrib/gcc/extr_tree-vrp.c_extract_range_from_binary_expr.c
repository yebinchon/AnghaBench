
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ member_0; scalar_t__ member_1; scalar_t__ member_2; scalar_t__ type; scalar_t__ min; scalar_t__ max; int * member_3; } ;
typedef TYPE_1__ value_range_t ;
typedef scalar_t__ tree ;
typedef enum value_range_type { ____Placeholder_value_range_type } value_range_type ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int BIT_AND_EXPR ;
 int CEIL_DIV_EXPR ;
 int EXACT_DIV_EXPR ;
 int FLOOR_DIV_EXPR ;
 scalar_t__ INTEGER_CST ;
 int MAX_EXPR ;
 int MINUS_EXPR ;
 int MIN_EXPR ;
 int MULT_EXPR ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 int ROUND_DIV_EXPR ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_OVERFLOW (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TRUNC_DIV_EXPR ;
 int TRUTH_ANDIF_EXPR ;
 int TRUTH_AND_EXPR ;
 int TRUTH_ORIF_EXPR ;
 int TRUTH_OR_EXPR ;
 int TYPE_OVERFLOW_UNDEFINED (int ) ;
 scalar_t__ VR_ANTI_RANGE ;
 scalar_t__ VR_RANGE ;
 scalar_t__ VR_UNDEFINED ;
 scalar_t__ VR_VARYING ;
 scalar_t__ build_int_cst (int ,int) ;
 int compare_values (scalar_t__,scalar_t__) ;
 scalar_t__ fold_binary (int,int ,scalar_t__,scalar_t__) ;
 int gcc_unreachable () ;
 TYPE_1__* get_value_range (scalar_t__) ;
 scalar_t__ integer_onep (scalar_t__) ;
 scalar_t__ integer_zerop (scalar_t__) ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;
 scalar_t__ is_overflow_infinity (scalar_t__) ;
 int overflow_infinity_range_p (TYPE_1__*) ;
 scalar_t__ range_includes_zero_p (TYPE_1__*) ;
 scalar_t__ range_is_nonnull (TYPE_1__*) ;
 scalar_t__ range_is_null (TYPE_1__*) ;
 int set_value_range (TYPE_1__*,int,scalar_t__,scalar_t__,int *) ;
 int set_value_range_to_nonnull (TYPE_1__*,int ) ;
 int set_value_range_to_null (TYPE_1__*,int ) ;
 int set_value_range_to_undefined (TYPE_1__*) ;
 int set_value_range_to_value (TYPE_1__*,scalar_t__,int *) ;
 int set_value_range_to_varying (TYPE_1__*) ;
 scalar_t__ symbolic_range_p (TYPE_1__*) ;
 scalar_t__ tree_int_cst_sgn (scalar_t__) ;
 scalar_t__ vrp_int_const_binop (int,scalar_t__,scalar_t__) ;
 scalar_t__ vrp_val_is_max (scalar_t__) ;
 scalar_t__ vrp_val_is_min (scalar_t__) ;

__attribute__((used)) static void
extract_range_from_binary_expr (value_range_t *vr, tree expr)
{
  enum tree_code code = TREE_CODE (expr);
  enum value_range_type type;
  tree op0, op1, min, max;
  int cmp;
  value_range_t vr0 = { VR_UNDEFINED, NULL_TREE, NULL_TREE, ((void*)0) };
  value_range_t vr1 = { VR_UNDEFINED, NULL_TREE, NULL_TREE, ((void*)0) };



  if (code != PLUS_EXPR
      && code != MINUS_EXPR
      && code != MULT_EXPR
      && code != TRUNC_DIV_EXPR
      && code != FLOOR_DIV_EXPR
      && code != CEIL_DIV_EXPR
      && code != EXACT_DIV_EXPR
      && code != ROUND_DIV_EXPR
      && code != MIN_EXPR
      && code != MAX_EXPR
      && code != BIT_AND_EXPR
      && code != TRUTH_ANDIF_EXPR
      && code != TRUTH_ORIF_EXPR
      && code != TRUTH_AND_EXPR
      && code != TRUTH_OR_EXPR)
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

  op1 = TREE_OPERAND (expr, 1);
  if (TREE_CODE (op1) == SSA_NAME)
    vr1 = *(get_value_range (op1));
  else if (is_gimple_min_invariant (op1))
    set_value_range_to_value (&vr1, op1, ((void*)0));
  else
    set_value_range_to_varying (&vr1);


  if (vr0.type == VR_UNDEFINED || vr1.type == VR_UNDEFINED)
    {
      set_value_range_to_undefined (vr);
      return;
    }


  type = vr0.type;






  if (code != BIT_AND_EXPR
      && code != TRUTH_AND_EXPR
      && code != TRUTH_OR_EXPR
      && (vr0.type == VR_VARYING
   || vr1.type == VR_VARYING
   || vr0.type != vr1.type
   || symbolic_range_p (&vr0)
   || symbolic_range_p (&vr1)))
    {
      set_value_range_to_varying (vr);
      return;
    }


  if (POINTER_TYPE_P (TREE_TYPE (expr))
      || POINTER_TYPE_P (TREE_TYPE (op0))
      || POINTER_TYPE_P (TREE_TYPE (op1)))
    {





      if (code == PLUS_EXPR)
 {
   if (range_is_nonnull (&vr0) || range_is_nonnull (&vr1))
     set_value_range_to_nonnull (vr, TREE_TYPE (expr));
   else if (range_is_null (&vr0) && range_is_null (&vr1))
     set_value_range_to_null (vr, TREE_TYPE (expr));
   else
     set_value_range_to_varying (vr);
 }
      else
 {


   set_value_range_to_varying (vr);
 }

      return;
    }



  if (code == TRUTH_ANDIF_EXPR
      || code == TRUTH_ORIF_EXPR
      || code == TRUTH_AND_EXPR
      || code == TRUTH_OR_EXPR)
    {


      if (code == TRUTH_AND_EXPR
   && ((vr0.type == VR_RANGE
        && integer_zerop (vr0.min)
        && integer_zerop (vr0.max))
       || (vr1.type == VR_RANGE
    && integer_zerop (vr1.min)
    && integer_zerop (vr1.max))))
 {
   type = VR_RANGE;
   min = max = build_int_cst (TREE_TYPE (expr), 0);
 }


      else if (code == TRUTH_OR_EXPR
        && ((vr0.type == VR_RANGE
      && integer_onep (vr0.min)
      && integer_onep (vr0.max))
     || (vr1.type == VR_RANGE
         && integer_onep (vr1.min)
         && integer_onep (vr1.max))))
 {
   type = VR_RANGE;
   min = max = build_int_cst (TREE_TYPE (expr), 1);
 }
      else if (vr0.type != VR_VARYING
        && vr1.type != VR_VARYING
        && vr0.type == vr1.type
        && !symbolic_range_p (&vr0)
        && !overflow_infinity_range_p (&vr0)
        && !symbolic_range_p (&vr1)
        && !overflow_infinity_range_p (&vr1))
 {

   min = fold_binary (code, TREE_TYPE (expr), vr0.min, vr1.min);
   max = fold_binary (code, TREE_TYPE (expr), vr0.max, vr1.max);
 }
      else
 {
   set_value_range_to_varying (vr);
   return;
 }
    }
  else if (code == PLUS_EXPR
    || code == MIN_EXPR
    || code == MAX_EXPR)
    {







      if (code == PLUS_EXPR && vr0.type == VR_ANTI_RANGE)
 {
   set_value_range_to_varying (vr);
   return;
 }




      min = vrp_int_const_binop (code, vr0.min, vr1.min);
      max = vrp_int_const_binop (code, vr0.max, vr1.max);
    }
  else if (code == MULT_EXPR
    || code == TRUNC_DIV_EXPR
    || code == FLOOR_DIV_EXPR
    || code == CEIL_DIV_EXPR
    || code == EXACT_DIV_EXPR
    || code == ROUND_DIV_EXPR)
    {
      tree val[4];
      size_t i;
      bool sop;
      if (code == MULT_EXPR
   && vr0.type == VR_ANTI_RANGE
   && !TYPE_OVERFLOW_UNDEFINED (TREE_TYPE (op0)))
 {
   set_value_range_to_varying (vr);
   return;
 }
      if (code != MULT_EXPR
   && (vr0.type == VR_ANTI_RANGE || range_includes_zero_p (&vr1)))
 {
   set_value_range_to_varying (vr);
   return;
 }


      sop = 0;
      val[0] = vrp_int_const_binop (code, vr0.min, vr1.min);
      if (val[0] == NULL_TREE)
 sop = 1;

      if (vr1.max == vr1.min)
 val[1] = NULL_TREE;
      else
 {
   val[1] = vrp_int_const_binop (code, vr0.min, vr1.max);
   if (val[1] == NULL_TREE)
     sop = 1;
 }

      if (vr0.max == vr0.min)
 val[2] = NULL_TREE;
      else
 {
   val[2] = vrp_int_const_binop (code, vr0.max, vr1.min);
   if (val[2] == NULL_TREE)
     sop = 1;
 }

      if (vr0.min == vr0.max || vr1.min == vr1.max)
 val[3] = NULL_TREE;
      else
 {
   val[3] = vrp_int_const_binop (code, vr0.max, vr1.max);
   if (val[3] == NULL_TREE)
     sop = 1;
 }

      if (sop)
 {
   set_value_range_to_varying (vr);
   return;
 }



      min = val[0];
      max = val[0];
      for (i = 1; i < 4; i++)
 {
   if (!is_gimple_min_invariant (min)
       || (TREE_OVERFLOW (min) && !is_overflow_infinity (min))
       || !is_gimple_min_invariant (max)
       || (TREE_OVERFLOW (max) && !is_overflow_infinity (max)))
     break;

   if (val[i])
     {
       if (!is_gimple_min_invariant (val[i])
    || (TREE_OVERFLOW (val[i])
        && !is_overflow_infinity (val[i])))
  {



    min = max = val[i];
    break;
  }

       if (compare_values (val[i], min) == -1)
  min = val[i];

       if (compare_values (val[i], max) == 1)
  max = val[i];
     }
 }
    }
  else if (code == MINUS_EXPR)
    {







      if (vr0.type == VR_ANTI_RANGE)
 {
   set_value_range_to_varying (vr);
   return;
 }



      min = vrp_int_const_binop (code, vr0.min, vr1.max);
      max = vrp_int_const_binop (code, vr0.max, vr1.min);
    }
  else if (code == BIT_AND_EXPR)
    {
      if (vr0.type == VR_RANGE
   && vr0.min == vr0.max
   && TREE_CODE (vr0.max) == INTEGER_CST
   && !TREE_OVERFLOW (vr0.max)
   && tree_int_cst_sgn (vr0.max) >= 0)
 {
   min = build_int_cst (TREE_TYPE (expr), 0);
   max = vr0.max;
 }
      else if (vr1.type == VR_RANGE
        && vr1.min == vr1.max
        && TREE_CODE (vr1.max) == INTEGER_CST
        && !TREE_OVERFLOW (vr1.max)
        && tree_int_cst_sgn (vr1.max) >= 0)
 {
   type = VR_RANGE;
   min = build_int_cst (TREE_TYPE (expr), 0);
   max = vr1.max;
 }
      else
 {
   set_value_range_to_varying (vr);
   return;
 }
    }
  else
    gcc_unreachable ();




  if (min == NULL_TREE
      || !is_gimple_min_invariant (min)
      || (TREE_OVERFLOW (min) && !is_overflow_infinity (min))
      || max == NULL_TREE
      || !is_gimple_min_invariant (max)
      || (TREE_OVERFLOW (max) && !is_overflow_infinity (max)))
    {
      set_value_range_to_varying (vr);
      return;
    }
  if ((vrp_val_is_min (min) || is_overflow_infinity (min))
      && (vrp_val_is_max (max) || is_overflow_infinity (max)))
    {
      set_value_range_to_varying (vr);
      return;
    }

  cmp = compare_values (min, max);
  if (cmp == -2 || cmp == 1)
    {



      set_value_range_to_varying (vr);
    }
  else
    set_value_range (vr, type, min, max, ((void*)0));
}
