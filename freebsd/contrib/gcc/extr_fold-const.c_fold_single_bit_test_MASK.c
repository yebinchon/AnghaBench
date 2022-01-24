#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* type_for_mode ) (int,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 scalar_t__ BIT_AND_EXPR ; 
 int /*<<< orphan*/  BIT_XOR_EXPR ; 
 int EQ_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (int) ; 
 int NE_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ RSHIFT_EXPR ; 
 scalar_t__ SIGN_EXTEND ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  flag_syntax_only ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  integer_one_node ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (int,int) ; 
 scalar_t__ FUNC17 (int,int) ; 
 int FUNC18 (scalar_t__) ; 

tree
FUNC19 (enum tree_code code, tree arg0, tree arg1,
		      tree result_type)
{
  /* If this is testing a single bit, we can optimize the test.  */
  if ((code == NE_EXPR || code == EQ_EXPR)
      && FUNC1 (arg0) == BIT_AND_EXPR && FUNC14 (arg1)
      && FUNC13 (FUNC4 (arg0, 1)))
    {
      tree inner = FUNC4 (arg0, 0);
      tree type = FUNC5 (arg0);
      int bitnum = FUNC18 (FUNC4 (arg0, 1));
      enum machine_mode operand_mode = FUNC6 (type);
      int ops_unsigned;
      tree signed_type, unsigned_type, intermediate_type;
      tree tem;

      /* First, see if we can fold the single bit test into a sign-bit
	 test.  */
      tem = FUNC12 (code, arg0, arg1,
						 result_type);
      if (tem)
	return tem;

      /* Otherwise we have (A & C) != 0 where C is a single bit,
	 convert that into ((A >> C2) & 1).  Where C2 = log2(C).
	 Similarly for (A & C) == 0.  */

      /* If INNER is a right shift of a constant and it plus BITNUM does
	 not overflow, adjust BITNUM and INNER.  */
      if (FUNC1 (inner) == RSHIFT_EXPR
	  && FUNC1 (FUNC4 (inner, 1)) == INTEGER_CST
	  && FUNC2 (FUNC4 (inner, 1)) == 0
	  && bitnum < FUNC7 (type)
	  && 0 > FUNC9 (FUNC4 (inner, 1),
				   bitnum - FUNC7 (type)))
	{
	  bitnum += FUNC3 (FUNC4 (inner, 1));
	  inner = FUNC4 (inner, 0);
	}

      /* If we are going to be able to omit the AND below, we must do our
	 operations as unsigned.  If we must use the AND, we have a choice.
	 Normally unsigned is faster, but for some machines signed is.  */
#ifdef LOAD_EXTEND_OP
      ops_unsigned = (LOAD_EXTEND_OP (operand_mode) == SIGN_EXTEND 
		      && !flag_syntax_only) ? 0 : 1;
#else
      ops_unsigned = 1;
#endif

      signed_type = lang_hooks.types.type_for_mode (operand_mode, 0);
      unsigned_type = lang_hooks.types.type_for_mode (operand_mode, 1);
      intermediate_type = ops_unsigned ? unsigned_type : signed_type;
      inner = FUNC11 (intermediate_type, inner);

      if (bitnum != 0)
	inner = FUNC8 (RSHIFT_EXPR, intermediate_type,
			inner, FUNC15 (bitnum));

      if (code == EQ_EXPR)
	inner = FUNC10 (BIT_XOR_EXPR, intermediate_type,
			     inner, integer_one_node);

      /* Put the AND last so it can combine with more things.  */
      inner = FUNC8 (BIT_AND_EXPR, intermediate_type,
		      inner, integer_one_node);

      /* Make sure to return the proper type.  */
      inner = FUNC11 (result_type, inner);

      return inner;
    }
  return NULL_TREE;
}