
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* type_for_size ) (int,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; int (* can_use_bit_fields_p ) () ;} ;
typedef int HOST_WIDE_INT ;


 int BIT_AND_EXPR ;
 int BIT_IOR_EXPR ;
 int BIT_NOT_EXPR ;
 int BRANCH_COST ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 int EQ_EXPR ;
 int FLOAT_TYPE_P (scalar_t__) ;
 int GET_MODE_BITSIZE (int) ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ LOGICAL_OP_NON_SHORT_CIRCUIT ;
 int LSHIFT_EXPR ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int NE_EXPR ;
 scalar_t__ NULL_TREE ;
 int RSHIFT_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CODE_CLASS (int) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TRUTH_ANDIF_EXPR ;
 int TRUTH_AND_EXPR ;
 int TRUTH_OR_EXPR ;
 int TYPE_ALIGN (scalar_t__) ;
 int VOIDmode ;
 int all_ones_mask_p (scalar_t__,int) ;
 scalar_t__ build2 (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_int_cst (scalar_t__,int ) ;
 scalar_t__ combine_comparisons (int,int,int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ const_binop (int,scalar_t__,scalar_t__,int ) ;
 scalar_t__ constant_boolean_node (int,scalar_t__) ;
 scalar_t__ decode_field_reference (scalar_t__,int*,int*,int*,int*,int*,scalar_t__*,scalar_t__*) ;
 scalar_t__ fold_build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 int get_best_mode (int,int,int ,int ,int) ;
 scalar_t__ integer_onep (scalar_t__) ;
 scalar_t__ integer_pow2p (scalar_t__) ;
 scalar_t__ integer_zerop (scalar_t__) ;
 TYPE_2__ lang_hooks ;
 scalar_t__ make_bit_field_ref (scalar_t__,scalar_t__,int,int,int) ;
 scalar_t__ operand_equal_p (scalar_t__,scalar_t__,int ) ;
 int simple_cst_equal (scalar_t__,scalar_t__) ;
 scalar_t__ simple_operand_p (scalar_t__) ;
 scalar_t__ size_int (int) ;
 int stub1 () ;
 scalar_t__ stub2 (int,int) ;
 scalar_t__ stub3 (int,int) ;
 int swap_tree_comparison (int) ;
 scalar_t__ tcc_comparison ;
 scalar_t__ unextend (scalar_t__,int,int,scalar_t__) ;
 int warning (int ,char*,...) ;
 int word_mode ;

__attribute__((used)) static tree
fold_truthop (enum tree_code code, tree truth_type, tree lhs, tree rhs)
{
  enum tree_code wanted_code;
  enum tree_code lcode, rcode;
  tree ll_arg, lr_arg, rl_arg, rr_arg;
  tree ll_inner, lr_inner, rl_inner, rr_inner;
  HOST_WIDE_INT ll_bitsize, ll_bitpos, lr_bitsize, lr_bitpos;
  HOST_WIDE_INT rl_bitsize, rl_bitpos, rr_bitsize, rr_bitpos;
  HOST_WIDE_INT xll_bitpos, xlr_bitpos, xrl_bitpos, xrr_bitpos;
  HOST_WIDE_INT lnbitsize, lnbitpos, rnbitsize, rnbitpos;
  int ll_unsignedp, lr_unsignedp, rl_unsignedp, rr_unsignedp;
  enum machine_mode ll_mode, lr_mode, rl_mode, rr_mode;
  enum machine_mode lnmode, rnmode;
  tree ll_mask, lr_mask, rl_mask, rr_mask;
  tree ll_and_mask, lr_and_mask, rl_and_mask, rr_and_mask;
  tree l_const, r_const;
  tree lntype, rntype, result;
  int first_bit, end_bit;
  int volatilep;
  tree orig_lhs = lhs, orig_rhs = rhs;
  enum tree_code orig_code = code;





  if (TREE_SIDE_EFFECTS (lhs) || TREE_SIDE_EFFECTS (rhs))
    return 0;

  lcode = TREE_CODE (lhs);
  rcode = TREE_CODE (rhs);

  if (lcode == BIT_AND_EXPR && integer_onep (TREE_OPERAND (lhs, 1)))
    {
      lhs = build2 (NE_EXPR, truth_type, lhs,
      build_int_cst (TREE_TYPE (lhs), 0));
      lcode = NE_EXPR;
    }

  if (rcode == BIT_AND_EXPR && integer_onep (TREE_OPERAND (rhs, 1)))
    {
      rhs = build2 (NE_EXPR, truth_type, rhs,
      build_int_cst (TREE_TYPE (rhs), 0));
      rcode = NE_EXPR;
    }

  if (TREE_CODE_CLASS (lcode) != tcc_comparison
      || TREE_CODE_CLASS (rcode) != tcc_comparison)
    return 0;

  ll_arg = TREE_OPERAND (lhs, 0);
  lr_arg = TREE_OPERAND (lhs, 1);
  rl_arg = TREE_OPERAND (rhs, 0);
  rr_arg = TREE_OPERAND (rhs, 1);


  if (simple_operand_p (ll_arg)
      && simple_operand_p (lr_arg))
    {
      tree result;
      if (operand_equal_p (ll_arg, rl_arg, 0)
          && operand_equal_p (lr_arg, rr_arg, 0))
 {
          result = combine_comparisons (code, lcode, rcode,
     truth_type, ll_arg, lr_arg);
   if (result)
     return result;
 }
      else if (operand_equal_p (ll_arg, rr_arg, 0)
               && operand_equal_p (lr_arg, rl_arg, 0))
 {
          result = combine_comparisons (code, lcode,
     swap_tree_comparison (rcode),
     truth_type, ll_arg, lr_arg);
   if (result)
     return result;
 }
    }

  code = ((code == TRUTH_AND_EXPR || code == TRUTH_ANDIF_EXPR)
   ? TRUTH_AND_EXPR : TRUTH_OR_EXPR);







  if (BRANCH_COST >= 2
      && ! FLOAT_TYPE_P (TREE_TYPE (rl_arg))
      && simple_operand_p (rl_arg)
      && simple_operand_p (rr_arg))
    {

      if (code == TRUTH_OR_EXPR
   && lcode == NE_EXPR && integer_zerop (lr_arg)
   && rcode == NE_EXPR && integer_zerop (rr_arg)
   && TREE_TYPE (ll_arg) == TREE_TYPE (rl_arg))
 return build2 (NE_EXPR, truth_type,
         build2 (BIT_IOR_EXPR, TREE_TYPE (ll_arg),
          ll_arg, rl_arg),
         build_int_cst (TREE_TYPE (ll_arg), 0));


      if (code == TRUTH_AND_EXPR
   && lcode == EQ_EXPR && integer_zerop (lr_arg)
   && rcode == EQ_EXPR && integer_zerop (rr_arg)
   && TREE_TYPE (ll_arg) == TREE_TYPE (rl_arg))
 return build2 (EQ_EXPR, truth_type,
         build2 (BIT_IOR_EXPR, TREE_TYPE (ll_arg),
          ll_arg, rl_arg),
         build_int_cst (TREE_TYPE (ll_arg), 0));

      if (LOGICAL_OP_NON_SHORT_CIRCUIT)
 {
   if (code != orig_code || lhs != orig_lhs || rhs != orig_rhs)
     return build2 (code, truth_type, lhs, rhs);
   return NULL_TREE;
 }
    }




  if ((lcode != EQ_EXPR && lcode != NE_EXPR)
      || (rcode != EQ_EXPR && rcode != NE_EXPR))
    return 0;

  volatilep = 0;
  ll_inner = decode_field_reference (ll_arg,
         &ll_bitsize, &ll_bitpos, &ll_mode,
         &ll_unsignedp, &volatilep, &ll_mask,
         &ll_and_mask);
  lr_inner = decode_field_reference (lr_arg,
         &lr_bitsize, &lr_bitpos, &lr_mode,
         &lr_unsignedp, &volatilep, &lr_mask,
         &lr_and_mask);
  rl_inner = decode_field_reference (rl_arg,
         &rl_bitsize, &rl_bitpos, &rl_mode,
         &rl_unsignedp, &volatilep, &rl_mask,
         &rl_and_mask);
  rr_inner = decode_field_reference (rr_arg,
         &rr_bitsize, &rr_bitpos, &rr_mode,
         &rr_unsignedp, &volatilep, &rr_mask,
         &rr_and_mask);





  if (volatilep || ll_inner == 0 || rl_inner == 0
      || ! operand_equal_p (ll_inner, rl_inner, 0))
    return 0;

  if (TREE_CODE (lr_arg) == INTEGER_CST
      && TREE_CODE (rr_arg) == INTEGER_CST)
    l_const = lr_arg, r_const = rr_arg;
  else if (lr_inner == 0 || rr_inner == 0
    || ! operand_equal_p (lr_inner, rr_inner, 0))
    return 0;
  else
    l_const = r_const = 0;





  wanted_code = (code == TRUTH_AND_EXPR ? EQ_EXPR : NE_EXPR);
  if (lcode != wanted_code)
    {
      if (l_const && integer_zerop (l_const) && integer_pow2p (ll_mask))
 {



   ll_unsignedp = 1;
   l_const = ll_mask;
 }
      else
 return 0;
    }


  if (rcode != wanted_code)
    {
      if (r_const && integer_zerop (r_const) && integer_pow2p (rl_mask))
 {
   rl_unsignedp = 1;
   r_const = rl_mask;
 }
      else
 return 0;
    }



  if (! lang_hooks.can_use_bit_fields_p ())
    return 0;




  first_bit = MIN (ll_bitpos, rl_bitpos);
  end_bit = MAX (ll_bitpos + ll_bitsize, rl_bitpos + rl_bitsize);
  lnmode = get_best_mode (end_bit - first_bit, first_bit,
     TYPE_ALIGN (TREE_TYPE (ll_inner)), word_mode,
     volatilep);
  if (lnmode == VOIDmode)
    return 0;

  lnbitsize = GET_MODE_BITSIZE (lnmode);
  lnbitpos = first_bit & ~ (lnbitsize - 1);
  lntype = lang_hooks.types.type_for_size (lnbitsize, 1);
  xll_bitpos = ll_bitpos - lnbitpos, xrl_bitpos = rl_bitpos - lnbitpos;

  if (BYTES_BIG_ENDIAN)
    {
      xll_bitpos = lnbitsize - xll_bitpos - ll_bitsize;
      xrl_bitpos = lnbitsize - xrl_bitpos - rl_bitsize;
    }

  ll_mask = const_binop (LSHIFT_EXPR, fold_convert (lntype, ll_mask),
    size_int (xll_bitpos), 0);
  rl_mask = const_binop (LSHIFT_EXPR, fold_convert (lntype, rl_mask),
    size_int (xrl_bitpos), 0);

  if (l_const)
    {
      l_const = fold_convert (lntype, l_const);
      l_const = unextend (l_const, ll_bitsize, ll_unsignedp, ll_and_mask);
      l_const = const_binop (LSHIFT_EXPR, l_const, size_int (xll_bitpos), 0);
      if (! integer_zerop (const_binop (BIT_AND_EXPR, l_const,
     fold_build1 (BIT_NOT_EXPR,
           lntype, ll_mask),
     0)))
 {
   warning (0, "comparison is always %d", wanted_code == NE_EXPR);

   return constant_boolean_node (wanted_code == NE_EXPR, truth_type);
 }
    }
  if (r_const)
    {
      r_const = fold_convert (lntype, r_const);
      r_const = unextend (r_const, rl_bitsize, rl_unsignedp, rl_and_mask);
      r_const = const_binop (LSHIFT_EXPR, r_const, size_int (xrl_bitpos), 0);
      if (! integer_zerop (const_binop (BIT_AND_EXPR, r_const,
     fold_build1 (BIT_NOT_EXPR,
           lntype, rl_mask),
     0)))
 {
   warning (0, "comparison is always %d", wanted_code == NE_EXPR);

   return constant_boolean_node (wanted_code == NE_EXPR, truth_type);
 }
    }




  if (l_const == 0)
    {
      if (ll_bitsize != lr_bitsize || rl_bitsize != rr_bitsize
   || ll_unsignedp != lr_unsignedp || rl_unsignedp != rr_unsignedp


   || ll_bitpos - rl_bitpos != lr_bitpos - rr_bitpos)
 return 0;

      first_bit = MIN (lr_bitpos, rr_bitpos);
      end_bit = MAX (lr_bitpos + lr_bitsize, rr_bitpos + rr_bitsize);
      rnmode = get_best_mode (end_bit - first_bit, first_bit,
         TYPE_ALIGN (TREE_TYPE (lr_inner)), word_mode,
         volatilep);
      if (rnmode == VOIDmode)
 return 0;

      rnbitsize = GET_MODE_BITSIZE (rnmode);
      rnbitpos = first_bit & ~ (rnbitsize - 1);
      rntype = lang_hooks.types.type_for_size (rnbitsize, 1);
      xlr_bitpos = lr_bitpos - rnbitpos, xrr_bitpos = rr_bitpos - rnbitpos;

      if (BYTES_BIG_ENDIAN)
 {
   xlr_bitpos = rnbitsize - xlr_bitpos - lr_bitsize;
   xrr_bitpos = rnbitsize - xrr_bitpos - rr_bitsize;
 }

      lr_mask = const_binop (LSHIFT_EXPR, fold_convert (rntype, lr_mask),
        size_int (xlr_bitpos), 0);
      rr_mask = const_binop (LSHIFT_EXPR, fold_convert (rntype, rr_mask),
        size_int (xrr_bitpos), 0);






      ll_mask = const_binop (BIT_IOR_EXPR, ll_mask, rl_mask, 0);
      lr_mask = const_binop (BIT_IOR_EXPR, lr_mask, rr_mask, 0);
      if (lnbitsize == rnbitsize && xll_bitpos == xlr_bitpos)
 {
   lhs = make_bit_field_ref (ll_inner, lntype, lnbitsize, lnbitpos,
        ll_unsignedp || rl_unsignedp);
   if (! all_ones_mask_p (ll_mask, lnbitsize))
     lhs = build2 (BIT_AND_EXPR, lntype, lhs, ll_mask);

   rhs = make_bit_field_ref (lr_inner, rntype, rnbitsize, rnbitpos,
        lr_unsignedp || rr_unsignedp);
   if (! all_ones_mask_p (lr_mask, rnbitsize))
     rhs = build2 (BIT_AND_EXPR, rntype, rhs, lr_mask);

   return build2 (wanted_code, truth_type, lhs, rhs);
 }
      if ((ll_bitsize + ll_bitpos == rl_bitpos
    && lr_bitsize + lr_bitpos == rr_bitpos)
   || (ll_bitpos == rl_bitpos + rl_bitsize
       && lr_bitpos == rr_bitpos + rr_bitsize))
 {
   tree type;

   lhs = make_bit_field_ref (ll_inner, lntype, ll_bitsize + rl_bitsize,
        MIN (ll_bitpos, rl_bitpos), ll_unsignedp);
   rhs = make_bit_field_ref (lr_inner, rntype, lr_bitsize + rr_bitsize,
        MIN (lr_bitpos, rr_bitpos), lr_unsignedp);

   ll_mask = const_binop (RSHIFT_EXPR, ll_mask,
     size_int (MIN (xll_bitpos, xrl_bitpos)), 0);
   lr_mask = const_binop (RSHIFT_EXPR, lr_mask,
     size_int (MIN (xlr_bitpos, xrr_bitpos)), 0);


   type = lntype;
   if (lntype != rntype)
     {
       if (lnbitsize > rnbitsize)
  {
    lhs = fold_convert (rntype, lhs);
    ll_mask = fold_convert (rntype, ll_mask);
    type = rntype;
  }
       else if (lnbitsize < rnbitsize)
  {
    rhs = fold_convert (lntype, rhs);
    lr_mask = fold_convert (lntype, lr_mask);
    type = lntype;
  }
     }

   if (! all_ones_mask_p (ll_mask, ll_bitsize + rl_bitsize))
     lhs = build2 (BIT_AND_EXPR, type, lhs, ll_mask);

   if (! all_ones_mask_p (lr_mask, lr_bitsize + rr_bitsize))
     rhs = build2 (BIT_AND_EXPR, type, rhs, lr_mask);

   return build2 (wanted_code, truth_type, lhs, rhs);
 }

      return 0;
    }





  result = const_binop (BIT_AND_EXPR, ll_mask, rl_mask, 0);
  if (! integer_zerop (result)
      && simple_cst_equal (const_binop (BIT_AND_EXPR, result, l_const, 0),
      const_binop (BIT_AND_EXPR, result, r_const, 0)) != 1)
    {
      if (wanted_code == NE_EXPR)
 {
   warning (0, "%<or%> of unmatched not-equal tests is always 1");
   return constant_boolean_node (1, truth_type);
 }
      else
 {
   warning (0, "%<and%> of mutually exclusive equal-tests is always 0");
   return constant_boolean_node (0, truth_type);
 }
    }





  result = make_bit_field_ref (ll_inner, lntype, lnbitsize, lnbitpos,
          ll_unsignedp || rl_unsignedp);

  ll_mask = const_binop (BIT_IOR_EXPR, ll_mask, rl_mask, 0);
  if (! all_ones_mask_p (ll_mask, lnbitsize))
    result = build2 (BIT_AND_EXPR, lntype, result, ll_mask);

  return build2 (wanted_code, truth_type, result,
   const_binop (BIT_IOR_EXPR, l_const, r_const, 0));
}
