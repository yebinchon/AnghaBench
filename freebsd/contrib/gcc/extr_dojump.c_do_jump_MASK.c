#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ rtx ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_8__ {TYPE_2__* handlers; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* type_for_size ) (int,int) ;int /*<<< orphan*/  (* type_for_mode ) (int,int) ;} ;
struct TYPE_7__ {TYPE_1__ types; } ;
struct TYPE_6__ {int /*<<< orphan*/  insn_code; } ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  ABS_EXPR 165 
#define  ADDR_EXPR 164 
#define  ARRAY_RANGE_REF 163 
#define  ARRAY_REF 162 
#define  BIT_AND_EXPR 161 
#define  BIT_FIELD_REF 160 
 int const BIT_XOR_EXPR ; 
 int BLKmode ; 
 int BRANCH_COST ; 
 int /*<<< orphan*/  BUILT_IN_EXPECT ; 
 int /*<<< orphan*/  BUILT_IN_NORMAL ; 
#define  CALL_EXPR 159 
 int /*<<< orphan*/  CODE_FOR_nothing ; 
#define  COMPONENT_REF 158 
#define  COMPOUND_EXPR 157 
#define  COND_EXPR 156 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONVERT_EXPR 155 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int EQ ; 
#define  EQ_EXPR 154 
#define  ERROR_MARK 153 
 int GE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int GEU ; 
#define  GE_EXPR 152 
 int GT ; 
 int GTU ; 
#define  GT_EXPR 151 
 int /*<<< orphan*/  HOST_BITS_PER_WIDE_INT ; 
#define  INTEGER_CST 150 
 int LE ; 
 int LEU ; 
#define  LE_EXPR 149 
#define  LROTATE_EXPR 148 
 int LT ; 
 int LTGT ; 
#define  LTGT_EXPR 147 
 int LTU ; 
#define  LT_EXPR 146 
#define  MINUS_EXPR 145 
 int /*<<< orphan*/  MODE_COMPLEX_FLOAT ; 
 int /*<<< orphan*/  MODE_COMPLEX_INT ; 
 int /*<<< orphan*/  MODE_INT ; 
 int NE ; 
#define  NEGATE_EXPR 144 
#define  NE_EXPR 143 
#define  NON_LVALUE_EXPR 142 
#define  NOP_EXPR 141 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int ORDERED ; 
#define  ORDERED_EXPR 140 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
#define  RROTATE_EXPR 139 
 int const RSHIFT_EXPR ; 
 int /*<<< orphan*/  SLOW_BYTE_ACCESS ; 
 int /*<<< orphan*/  SUBREG ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int const FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
#define  TRUTH_ANDIF_EXPR 138 
#define  TRUTH_AND_EXPR 137 
#define  TRUTH_NOT_EXPR 136 
#define  TRUTH_ORIF_EXPR 135 
#define  TRUTH_OR_EXPR 134 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int UNEQ ; 
#define  UNEQ_EXPR 133 
 int UNGE ; 
#define  UNGE_EXPR 132 
 int UNGT ; 
#define  UNGT_EXPR 131 
 int UNLE ; 
#define  UNLE_EXPR 130 
 int UNLT ; 
#define  UNLT_EXPR 129 
 int UNORDERED ; 
#define  UNORDERED_EXPR 128 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccp_jump ; 
 TYPE_4__* cmp_optab ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__) ; 
 int /*<<< orphan*/  error_mark_node ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 () ; 
 scalar_t__ FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ) ; 
 TYPE_3__ lang_hooks ; 
 int FUNC42 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (int,int) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int,int) ; 
 int /*<<< orphan*/  FUNC46 (int,int) ; 
 int FUNC47 (int /*<<< orphan*/ ) ; 

void
FUNC48 (tree exp, rtx if_false_label, rtx if_true_label)
{
  enum tree_code code = FUNC9 (exp);
  rtx temp;
  int i;
  tree type;
  enum machine_mode mode;
  rtx drop_through_label = 0;

  switch (code)
    {
    case ERROR_MARK:
      break;

    case INTEGER_CST:
      temp = FUNC41 (exp) ? if_false_label : if_true_label;
      if (temp)
        FUNC29 (temp);
      break;

#if 0
      /* This is not true with #pragma weak  */
    case ADDR_EXPR:
      /* The address of something can never be zero.  */
      if (if_true_label)
        emit_jump (if_true_label);
      break;
#endif

    case NOP_EXPR:
      if (FUNC9 (FUNC11 (exp, 0)) == COMPONENT_REF
          || FUNC9 (FUNC11 (exp, 0)) == BIT_FIELD_REF
          || FUNC9 (FUNC11 (exp, 0)) == ARRAY_REF
          || FUNC9 (FUNC11 (exp, 0)) == ARRAY_RANGE_REF)
        goto normal;
    case CONVERT_EXPR:
      /* If we are narrowing the operand, we have to do the compare in the
         narrower mode.  */
      if ((FUNC15 (FUNC13 (exp))
           < FUNC15 (FUNC13 (FUNC11 (exp, 0)))))
        goto normal;
    case NON_LVALUE_EXPR:
    case ABS_EXPR:
    case NEGATE_EXPR:
    case LROTATE_EXPR:
    case RROTATE_EXPR:
      /* These cannot change zero->nonzero or vice versa.  */
      FUNC48 (FUNC11 (exp, 0), if_false_label, if_true_label);
      break;

    case BIT_AND_EXPR:
      /* fold_single_bit_test() converts (X & (1 << C)) into (X >> C) & 1.
	 See if the former is preferred for jump tests and restore it
	 if so.  */
      if (FUNC40 (FUNC11 (exp, 1)))
	{
	  tree exp0 = FUNC11 (exp, 0);
	  rtx set_label, clr_label;

	  /* Strip narrowing integral type conversions.  */
	  while ((FUNC9 (exp0) == NOP_EXPR
		  || FUNC9 (exp0) == CONVERT_EXPR
		  || FUNC9 (exp0) == NON_LVALUE_EXPR)
		 && FUNC11 (exp0, 0) != error_mark_node
		 && FUNC15 (FUNC13 (exp0))
		    <= FUNC15 (FUNC13 (FUNC11 (exp0, 0))))
	    exp0 = FUNC11 (exp0, 0);

	  /* "exp0 ^ 1" inverts the sense of the single bit test.  */
	  if (FUNC9 (exp0) == BIT_XOR_EXPR
	      && FUNC40 (FUNC11 (exp0, 1)))
	    {
	      exp0 = FUNC11 (exp0, 0);
	      clr_label = if_true_label;
	      set_label = if_false_label;
	    }
	  else
	    {
	      clr_label = if_false_label;
	      set_label = if_true_label;
	    }

	  if (FUNC9 (exp0) == RSHIFT_EXPR)
	    {
	      tree arg = FUNC11 (exp0, 0);
	      tree shift = FUNC11 (exp0, 1);
	      tree argtype = FUNC13 (arg);
	      if (FUNC9 (shift) == INTEGER_CST
		  && FUNC21 (shift, 0) >= 0
		  && FUNC21 (shift, HOST_BITS_PER_WIDE_INT) < 0
		  && FUNC43 (FUNC14 (argtype),
					  FUNC10 (shift)))
		{
		  HOST_WIDE_INT mask = (HOST_WIDE_INT) 1
				       << FUNC10 (shift);
		  FUNC48 (FUNC18 (BIT_AND_EXPR, argtype, arg,
				   FUNC19 (argtype, mask)),
			   clr_label, set_label);
		  break;
		}
	    }
	}

      /* If we are AND'ing with a small constant, do this comparison in the
         smallest type that fits.  If the machine doesn't have comparisons
         that small, it will be converted back to the wider comparison.
         This helps if we are testing the sign bit of a narrower object.
         combine can't do this for us because it can't know whether a
         ZERO_EXTRACT or a compare in a smaller mode exists, but we do.  */

      if (! SLOW_BYTE_ACCESS
          && FUNC9 (FUNC11 (exp, 1)) == INTEGER_CST
          && FUNC15 (FUNC13 (exp)) <= HOST_BITS_PER_WIDE_INT
          && (i = FUNC47 (FUNC11 (exp, 1))) >= 0
          && (mode = FUNC42 (i + 1, MODE_INT, 0)) != BLKmode
          && (type = lang_hooks.types.type_for_mode (mode, 1)) != 0
          && FUNC15 (type) < FUNC15 (FUNC13 (exp))
          && (cmp_optab->handlers[(int) FUNC14 (type)].insn_code
              != CODE_FOR_nothing))
        {
          FUNC48 (FUNC34 (type, exp), if_false_label, if_true_label);
          break;
        }
      goto normal;

    case TRUTH_NOT_EXPR:
      FUNC48 (FUNC11 (exp, 0), if_true_label, if_false_label);
      break;

    case COND_EXPR:
      {
	rtx label1 = FUNC37 ();
	if (!if_true_label || !if_false_label)
	  {
	    drop_through_label = FUNC37 ();
	    if (!if_true_label)
	      if_true_label = drop_through_label;
	    if (!if_false_label)
	      if_false_label = drop_through_label;
	  }

        FUNC27 ();
        FUNC48 (FUNC11 (exp, 0), label1, NULL_RTX);
        FUNC48 (FUNC11 (exp, 1), if_false_label, if_true_label);
        FUNC30 (label1);
        FUNC48 (FUNC11 (exp, 2), if_false_label, if_true_label);
	break;
      }

    case TRUTH_ANDIF_EXPR:
    case TRUTH_ORIF_EXPR:
    case COMPOUND_EXPR:
      /* Lowered by gimplify.c.  */
      FUNC36 ();

    case COMPONENT_REF:
    case BIT_FIELD_REF:
    case ARRAY_REF:
    case ARRAY_RANGE_REF:
      {
        HOST_WIDE_INT bitsize, bitpos;
        int unsignedp;
        enum machine_mode mode;
        tree type;
        tree offset;
        int volatilep = 0;

        /* Get description of this reference.  We don't actually care
           about the underlying object here.  */
        FUNC39 (exp, &bitsize, &bitpos, &offset, &mode,
                             &unsignedp, &volatilep, false);

        type = lang_hooks.types.type_for_size (bitsize, unsignedp);
        if (! SLOW_BYTE_ACCESS
            && type != 0 && bitsize >= 0
            && FUNC15 (type) < FUNC15 (FUNC13 (exp))
            && (cmp_optab->handlers[(int) FUNC14 (type)].insn_code
		!= CODE_FOR_nothing))
          {
            FUNC48 (FUNC34 (type, exp), if_false_label, if_true_label);
            break;
          }
        goto normal;
      }

    case EQ_EXPR:
      {
        tree inner_type = FUNC13 (FUNC11 (exp, 0));

        FUNC35 (FUNC5 (FUNC14 (inner_type))
		    != MODE_COMPLEX_FLOAT);
	FUNC35 (FUNC5 (FUNC14 (inner_type))
		    != MODE_COMPLEX_INT);
	
        if (FUNC41 (FUNC11 (exp, 1)))
          FUNC48 (FUNC11 (exp, 0), if_true_label, if_false_label);
        else if (FUNC5 (FUNC14 (inner_type)) == MODE_INT
                 && !FUNC20 (EQ, FUNC14 (inner_type), ccp_jump))
          FUNC25 (exp, if_false_label, if_true_label);
        else
          FUNC23 (exp, EQ, EQ, if_false_label, if_true_label);
        break;
      }

    case MINUS_EXPR:
      /* Nonzero iff operands of minus differ.  */
      exp = FUNC18 (NE_EXPR, FUNC13 (exp),
		    FUNC11 (exp, 0),
		    FUNC11 (exp, 1));
      /* FALLTHRU */
    case NE_EXPR:
      {
        tree inner_type = FUNC13 (FUNC11 (exp, 0));

        FUNC35 (FUNC5 (FUNC14 (inner_type))
		    != MODE_COMPLEX_FLOAT);
	FUNC35 (FUNC5 (FUNC14 (inner_type))
		    != MODE_COMPLEX_INT);
	
        if (FUNC41 (FUNC11 (exp, 1)))
          FUNC48 (FUNC11 (exp, 0), if_false_label, if_true_label);
        else if (FUNC5 (FUNC14 (inner_type)) == MODE_INT
           && !FUNC20 (NE, FUNC14 (inner_type), ccp_jump))
          FUNC25 (exp, if_true_label, if_false_label);
        else
          FUNC23 (exp, NE, NE, if_false_label, if_true_label);
        break;
      }

    case LT_EXPR:
      mode = FUNC14 (FUNC13 (FUNC11 (exp, 0)));
      if (FUNC5 (mode) == MODE_INT
          && ! FUNC20 (LT, mode, ccp_jump))
        FUNC26 (exp, 1, if_false_label, if_true_label);
      else
        FUNC23 (exp, LT, LTU, if_false_label, if_true_label);
      break;

    case LE_EXPR:
      mode = FUNC14 (FUNC13 (FUNC11 (exp, 0)));
      if (FUNC5 (mode) == MODE_INT
          && ! FUNC20 (LE, mode, ccp_jump))
        FUNC26 (exp, 0, if_true_label, if_false_label);
      else
        FUNC23 (exp, LE, LEU, if_false_label, if_true_label);
      break;

    case GT_EXPR:
      mode = FUNC14 (FUNC13 (FUNC11 (exp, 0)));
      if (FUNC5 (mode) == MODE_INT
          && ! FUNC20 (GT, mode, ccp_jump))
        FUNC26 (exp, 0, if_false_label, if_true_label);
      else
        FUNC23 (exp, GT, GTU, if_false_label, if_true_label);
      break;

    case GE_EXPR:
      mode = FUNC14 (FUNC13 (FUNC11 (exp, 0)));
      if (FUNC5 (mode) == MODE_INT
          && ! FUNC20 (GE, mode, ccp_jump))
        FUNC26 (exp, 1, if_true_label, if_false_label);
      else
        FUNC23 (exp, GE, GEU, if_false_label, if_true_label);
      break;

    case UNORDERED_EXPR:
    case ORDERED_EXPR:
      {
        enum rtx_code cmp, rcmp;
        int do_rev;

        if (code == UNORDERED_EXPR)
          cmp = UNORDERED, rcmp = ORDERED;
        else
          cmp = ORDERED, rcmp = UNORDERED;
        mode = FUNC14 (FUNC13 (FUNC11 (exp, 0)));

        do_rev = 0;
        if (! FUNC20 (cmp, mode, ccp_jump)
            && (FUNC20 (rcmp, mode, ccp_jump)
          /* If the target doesn't provide either UNORDERED or ORDERED
             comparisons, canonicalize on UNORDERED for the library.  */
          || rcmp == UNORDERED))
          do_rev = 1;

        if (! do_rev)
          FUNC23 (exp, cmp, cmp, if_false_label, if_true_label);
        else
          FUNC23 (exp, rcmp, rcmp, if_true_label, if_false_label);
      }
      break;

    {
      enum rtx_code rcode1;
      enum tree_code tcode1, tcode2;

      case UNLT_EXPR:
        rcode1 = UNLT;
        tcode1 = UNORDERED_EXPR;
        tcode2 = LT_EXPR;
        goto unordered_bcc;
      case UNLE_EXPR:
        rcode1 = UNLE;
        tcode1 = UNORDERED_EXPR;
        tcode2 = LE_EXPR;
        goto unordered_bcc;
      case UNGT_EXPR:
        rcode1 = UNGT;
        tcode1 = UNORDERED_EXPR;
        tcode2 = GT_EXPR;
        goto unordered_bcc;
      case UNGE_EXPR:
        rcode1 = UNGE;
        tcode1 = UNORDERED_EXPR;
        tcode2 = GE_EXPR;
        goto unordered_bcc;
      case UNEQ_EXPR:
        rcode1 = UNEQ;
        tcode1 = UNORDERED_EXPR;
        tcode2 = EQ_EXPR;
        goto unordered_bcc;
      case LTGT_EXPR:
	/* It is ok for LTGT_EXPR to trap when the result is unordered,
	   so expand to (a < b) || (a > b).  */
        rcode1 = LTGT;
        tcode1 = LT_EXPR;
        tcode2 = GT_EXPR;
        goto unordered_bcc;

      unordered_bcc:
        mode = FUNC14 (FUNC13 (FUNC11 (exp, 0)));
        if (FUNC20 (rcode1, mode, ccp_jump))
          FUNC23 (exp, rcode1, rcode1, if_false_label,
                               if_true_label);
        else
          {
            tree op0 = FUNC44 (FUNC11 (exp, 0));
            tree op1 = FUNC44 (FUNC11 (exp, 1));
            tree cmp0, cmp1;

            /* If the target doesn't support combined unordered
               compares, decompose into two comparisons.  */
	    if (if_true_label == 0)
	      drop_through_label = if_true_label = FUNC37 ();
	      
            cmp0 = FUNC33 (tcode1, FUNC13 (exp), op0, op1);
            cmp1 = FUNC33 (tcode2, FUNC13 (exp), op0, op1);
	    FUNC48 (cmp0, 0, if_true_label);
	    FUNC48 (cmp1, if_false_label, if_true_label);
          }
      }
      break;

    case TRUTH_AND_EXPR:
      /* High branch cost, expand as the bitwise AND of the conditions.
	 Do the same if the RHS has side effects, because we're effectively
	 turning a TRUTH_AND_EXPR into a TRUTH_ANDIF_EXPR.  */
      if (BRANCH_COST >= 4 || FUNC12 (FUNC11 (exp, 1)))
	goto normal;

      if (if_false_label == NULL_RTX)
        {
	  drop_through_label = FUNC37 ();
          FUNC48 (FUNC11 (exp, 0), drop_through_label, NULL_RTX);
          FUNC48 (FUNC11 (exp, 1), NULL_RTX, if_true_label);
	}
      else
	{
	  FUNC48 (FUNC11 (exp, 0), if_false_label, NULL_RTX);
          FUNC48 (FUNC11 (exp, 1), if_false_label, if_true_label);
	}
      break;

    case TRUTH_OR_EXPR:
      /* High branch cost, expand as the bitwise OR of the conditions.
	 Do the same if the RHS has side effects, because we're effectively
	 turning a TRUTH_OR_EXPR into a TRUTH_ORIF_EXPR.  */
      if (BRANCH_COST >= 4 || FUNC12 (FUNC11 (exp, 1)))
	goto normal;

      if (if_true_label == NULL_RTX)
	{
          drop_through_label = FUNC37 ();
          FUNC48 (FUNC11 (exp, 0), NULL_RTX, drop_through_label);
          FUNC48 (FUNC11 (exp, 1), if_false_label, NULL_RTX);
	}
      else
	{
          FUNC48 (FUNC11 (exp, 0), NULL_RTX, if_true_label);
          FUNC48 (FUNC11 (exp, 1), if_false_label, if_true_label);
	}
      break;

      /* Special case:
          __builtin_expect (<test>, 0)	and
          __builtin_expect (<test>, 1)

         We need to do this here, so that <test> is not converted to a SCC
         operation on machines that use condition code registers and COMPARE
         like the PowerPC, and then the jump is done based on whether the SCC
         operation produced a 1 or 0.  */
    case CALL_EXPR:
      /* Check for a built-in function.  */
      {
	tree fndecl = FUNC38 (exp);
	tree arglist = FUNC11 (exp, 1);

	if (fndecl
	    && FUNC1 (fndecl) == BUILT_IN_NORMAL
	    && FUNC2 (fndecl) == BUILT_IN_EXPECT
	    && arglist != NULL_TREE
	    && FUNC8 (arglist) != NULL_TREE)
	  {
	    rtx seq = FUNC31 (exp, if_false_label,
						  if_true_label);

	    if (seq != NULL_RTX)
	      {
		FUNC28 (seq);
		return;
	      }
	  }
      }
 
      /* Fall through and generate the normal code.  */
    default:
    normal:
      temp = FUNC32 (exp);
      FUNC27 ();
      /* The RTL optimizers prefer comparisons against pseudos.  */
      if (FUNC3 (temp) == SUBREG)
	{
	  /* Compare promoted variables in their promoted mode.  */
	  if (FUNC7 (temp)
	      && FUNC6 (FUNC17 (temp, 0)))
	    temp = FUNC17 (temp, 0);
	  else
	    temp = FUNC22 (temp);
	}
      FUNC24 (temp, FUNC0 (FUNC4 (temp)),
			       NE, FUNC16 (FUNC13 (exp)),
			       FUNC4 (temp), NULL_RTX,
			       if_false_label, if_true_label);
    }

  if (drop_through_label)
    {
      FUNC27 ();
      FUNC30 (drop_through_label);
    }
}