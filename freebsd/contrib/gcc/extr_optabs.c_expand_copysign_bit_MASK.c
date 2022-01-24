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
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int BITS_PER_WORD ; 
 int BLKmode ; 
 scalar_t__ FLOAT_WORDS_BIG_ENDIAN ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 scalar_t__ UNITS_PER_WORD ; 
 int /*<<< orphan*/  and_optab ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int,int,int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  ior_optab ; 
 scalar_t__ FUNC11 (int,scalar_t__,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int,int,int) ; 
 scalar_t__ FUNC13 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int word_mode ; 

__attribute__((used)) static rtx
FUNC15 (enum machine_mode mode, rtx op0, rtx op1, rtx target,
		     int bitpos, bool op0_is_abs)
{
  enum machine_mode imode;
  HOST_WIDE_INT hi, lo;
  int word, nwords, i;
  rtx temp, insns;

  if (FUNC1 (mode) <= UNITS_PER_WORD)
    {
      imode = FUNC10 (mode);
      if (imode == BLKmode)
	return NULL_RTX;
      word = 0;
      nwords = 1;
    }
  else
    {
      imode = word_mode;

      if (FLOAT_WORDS_BIG_ENDIAN)
	word = (FUNC0 (mode) - bitpos) / BITS_PER_WORD;
      else
	word = bitpos / BITS_PER_WORD;
      bitpos = bitpos % BITS_PER_WORD;
      nwords = (FUNC0 (mode) + BITS_PER_WORD - 1) / BITS_PER_WORD;
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

  if (target == 0 || target == op0 || target == op1)
    target = FUNC7 (mode);

  if (nwords > 1)
    {
      FUNC14 ();

      for (i = 0; i < nwords; ++i)
	{
	  rtx targ_piece = FUNC12 (target, i, 1, mode);
	  rtx op0_piece = FUNC13 (op0, i, mode);

	  if (i == word)
	    {
	      if (!op0_is_abs)
		op0_piece = FUNC5 (imode, and_optab, op0_piece,
					  FUNC9 (~lo, ~hi, imode),
					  NULL_RTX, 1, OPTAB_LIB_WIDEN);

	      op1 = FUNC5 (imode, and_optab,
				  FUNC13 (op1, i, mode),
				  FUNC9 (lo, hi, imode),
				  NULL_RTX, 1, OPTAB_LIB_WIDEN);

	      temp = FUNC5 (imode, ior_optab, op0_piece, op1,
				   targ_piece, 1, OPTAB_LIB_WIDEN);
	      if (temp != targ_piece)
		FUNC2 (targ_piece, temp);
	    }
	  else
	    FUNC2 (targ_piece, op0_piece);
	}

      insns = FUNC8 ();
      FUNC4 ();

      FUNC3 (insns, target, op0, op1, NULL_RTX);
    }
  else
    {
      op1 = FUNC5 (imode, and_optab, FUNC6 (imode, op1),
		          FUNC9 (lo, hi, imode),
		          NULL_RTX, 1, OPTAB_LIB_WIDEN);

      op0 = FUNC6 (imode, op0);
      if (!op0_is_abs)
	op0 = FUNC5 (imode, and_optab, op0,
			    FUNC9 (~lo, ~hi, imode),
			    NULL_RTX, 1, OPTAB_LIB_WIDEN);

      temp = FUNC5 (imode, ior_optab, op0, op1,
			   FUNC6 (imode, target), 1, OPTAB_LIB_WIDEN);
      target = FUNC11 (mode, temp, imode);
    }

  return target;
}