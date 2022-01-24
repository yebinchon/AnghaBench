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
struct real_format {int signbit_rw; int /*<<< orphan*/  has_signed_zero; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int ABS ; 
 int BITS_PER_WORD ; 
 int BLKmode ; 
 scalar_t__ FLOAT_WORDS_BIG_ENDIAN ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 int NEG ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 struct real_format* FUNC2 (int) ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 scalar_t__ UNITS_PER_WORD ; 
 int /*<<< orphan*/  and_optab ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,int,int) ; 
 int FUNC14 (int) ; 
 scalar_t__ FUNC15 (int,scalar_t__,int) ; 
 scalar_t__ FUNC16 (scalar_t__,int,int,int) ; 
 scalar_t__ FUNC17 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int word_mode ; 
 int /*<<< orphan*/  xor_optab ; 

__attribute__((used)) static rtx
FUNC20 (enum rtx_code code, enum machine_mode mode,
		   rtx op0, rtx target)
{
  const struct real_format *fmt;
  int bitpos, word, nwords, i;
  enum machine_mode imode;
  HOST_WIDE_INT hi, lo;
  rtx temp, insns;

  /* The format has to have a simple sign bit.  */
  fmt = FUNC2 (mode);
  if (fmt == NULL)
    return NULL_RTX;

  bitpos = fmt->signbit_rw;
  if (bitpos < 0)
    return NULL_RTX;

  /* Don't create negative zeros if the format doesn't support them.  */
  if (code == NEG && !fmt->has_signed_zero)
    return NULL_RTX;

  if (FUNC1 (mode) <= UNITS_PER_WORD)
    {
      imode = FUNC14 (mode);
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
  if (code == ABS)
    lo = ~lo, hi = ~hi;

  if (target == 0 || target == op0)
    target = FUNC9 (mode);

  if (nwords > 1)
    {
      FUNC19 ();

      for (i = 0; i < nwords; ++i)
	{
	  rtx targ_piece = FUNC16 (target, i, 1, mode);
	  rtx op0_piece = FUNC17 (op0, i, mode);

	  if (i == word)
	    {
	      temp = FUNC7 (imode, code == ABS ? and_optab : xor_optab,
				   op0_piece,
				   FUNC13 (lo, hi, imode),
				   targ_piece, 1, OPTAB_LIB_WIDEN);
	      if (temp != targ_piece)
		FUNC4 (targ_piece, temp);
	    }
	  else
	    FUNC4 (targ_piece, op0_piece);
	}

      insns = FUNC11 ();
      FUNC6 ();

      temp = FUNC10 (code, mode, FUNC3 (op0));
      FUNC5 (insns, target, op0, NULL_RTX, temp);
    }
  else
    {
      temp = FUNC7 (imode, code == ABS ? and_optab : xor_optab,
			   FUNC8 (imode, op0),
			   FUNC13 (lo, hi, imode),
		           FUNC8 (imode, target), 1, OPTAB_LIB_WIDEN);
      target = FUNC15 (mode, temp, imode);

      FUNC18 (FUNC12 (), REG_EQUAL,
			   FUNC10 (code, mode, FUNC3 (op0)));
    }

  return target;
}