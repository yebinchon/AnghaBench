#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int BITS_PER_WORD ; 
 int BLKmode ; 
 scalar_t__ CONST_DOUBLE ; 
 int /*<<< orphan*/  EQ ; 
 scalar_t__ FLOAT_WORDS_BIG_ENDIAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 int /*<<< orphan*/  NEG ; 
 int /*<<< orphan*/ * NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 scalar_t__ UNITS_PER_WORD ; 
 int /*<<< orphan*/  abs_optab ; 
 int /*<<< orphan*/  and_optab ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  neg_optab ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int word_mode ; 

__attribute__((used)) static rtx
FUNC15 (enum machine_mode mode, rtx op0, rtx op1, rtx target,
		        int bitpos, bool op0_is_abs)
{
  enum machine_mode imode;
  HOST_WIDE_INT hi, lo;
  int word;
  rtx label;

  if (target == op1)
    target = NULL_RTX;

  if (!op0_is_abs)
    {
      op0 = FUNC8 (mode, abs_optab, op0, target, 0);
      if (op0 == NULL)
	return NULL_RTX;
      target = op0;
    }
  else
    {
      if (target == NULL_RTX)
        target = FUNC3 (op0);
      else
	FUNC6 (target, op0);
    }

  if (FUNC2 (mode) <= UNITS_PER_WORD)
    {
      imode = FUNC12 (mode);
      if (imode == BLKmode)
	return NULL_RTX;
      op1 = FUNC10 (imode, op1);
    }
  else
    {
      imode = word_mode;
      if (FLOAT_WORDS_BIG_ENDIAN)
	word = (FUNC1 (mode) - bitpos) / BITS_PER_WORD;
      else
	word = bitpos / BITS_PER_WORD;
      bitpos = bitpos % BITS_PER_WORD;
      op1 = FUNC13 (op1, word, mode);
    }

  if (bitpos < HOST_BITS_PER_WIDE_INT)
    {
      hi = 0;
      lo = (HOST_WIDE_INT) 1 << bitpos;
    }
  else
    {
      hi = (HOST_WIDE_INT) 1 << (bitpos - HOST_BITS_PER_WIDE_INT);
      lo = 0;
    }

  op1 = FUNC7 (imode, and_optab, op1,
		      FUNC11 (lo, hi, imode),
		      NULL_RTX, 1, OPTAB_LIB_WIDEN);

  label = FUNC9 ();
  FUNC4 (op1, const0_rtx, EQ, NULL_RTX, imode, 1, label);

  if (FUNC0 (op0) == CONST_DOUBLE)
    op0 = FUNC14 (NEG, mode, op0, mode);
  else
    op0 = FUNC8 (mode, neg_optab, op0, target, 0);
  if (op0 != target)
    FUNC6 (target, op0);

  FUNC5 (label);

  return target;
}