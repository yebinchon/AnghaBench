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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* type_for_size ) (scalar_t__,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ BIT_AND_EXPR ; 
 scalar_t__ CONVERT_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  LSHIFT_EXPR ; 
 scalar_t__ NON_LVALUE_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ PLACEHOLDER_EXPR ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,int*,int*,int*,int) ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 

__attribute__((used)) static tree
FUNC15 (tree exp, HOST_WIDE_INT *pbitsize,
			HOST_WIDE_INT *pbitpos, enum machine_mode *pmode,
			int *punsignedp, int *pvolatilep,
			tree *pmask, tree *pand_mask)
{
  tree outer_type = 0;
  tree and_mask = 0;
  tree mask, inner, offset;
  tree unsigned_type;
  unsigned int precision;

  /* All the optimizations using this function assume integer fields.
     There are problems with FP fields since the type_for_size call
     below can fail for, e.g., XFmode.  */
  if (! FUNC0 (FUNC4 (exp)))
    return 0;

  /* We are interested in the bare arrangement of bits, so strip everything
     that doesn't affect the machine mode.  However, record the type of the
     outermost expression if it may matter below.  */
  if (FUNC2 (exp) == NOP_EXPR
      || FUNC2 (exp) == CONVERT_EXPR
      || FUNC2 (exp) == NON_LVALUE_EXPR)
    outer_type = FUNC4 (exp);
  FUNC1 (exp);

  if (FUNC2 (exp) == BIT_AND_EXPR)
    {
      and_mask = FUNC3 (exp, 1);
      exp = FUNC3 (exp, 0);
      FUNC1 (exp); FUNC1 (and_mask);
      if (FUNC2 (and_mask) != INTEGER_CST)
	return 0;
    }

  inner = FUNC12 (exp, pbitsize, pbitpos, &offset, pmode,
			       punsignedp, pvolatilep, false);
  if ((inner == exp && and_mask == 0)
      || *pbitsize < 0 || offset != 0
      || FUNC2 (inner) == PLACEHOLDER_EXPR)
    return 0;

  /* If the number of bits in the reference is the same as the bitsize of
     the outer type, then the outer type gives the signedness. Otherwise
     (in case of a small bitfield) the signedness is unchanged.  */
  if (outer_type && *pbitsize == FUNC5 (outer_type))
    *punsignedp = FUNC6 (outer_type);

  /* Compute the mask to access the bitfield.  */
  unsigned_type = lang_hooks.types.type_for_size (*pbitsize, 1);
  precision = FUNC5 (unsigned_type);

  mask = FUNC7 (unsigned_type, -1);
  mask = FUNC11 (mask, 0, false, false);

  mask = FUNC8 (LSHIFT_EXPR, mask, FUNC13 (precision - *pbitsize), 0);
  mask = FUNC8 (RSHIFT_EXPR, mask, FUNC13 (precision - *pbitsize), 0);

  /* Merge it with the mask we found in the BIT_AND_EXPR, if any.  */
  if (and_mask != 0)
    mask = FUNC9 (BIT_AND_EXPR, unsigned_type,
			FUNC10 (unsigned_type, and_mask), mask);

  *pmask = mask;
  *pand_mask = and_mask;
  return inner;
}