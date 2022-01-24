#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum insn_code { ____Placeholder_insn_code } insn_code ;
typedef  TYPE_3__* convert_optab ;
struct TYPE_10__ {TYPE_1__* operand; } ;
struct TYPE_9__ {TYPE_2__** handlers; } ;
struct TYPE_8__ {int insn_code; int libfunc; } ;
struct TYPE_7__ {int mode; } ;

/* Variables and functions */
 scalar_t__ BITS_PER_WORD ; 
 int BLKmode ; 
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int CODE_FOR_nothing ; 
 scalar_t__ CODE_FOR_slt ; 
 scalar_t__ CONCAT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 int FLOAT_EXTEND ; 
 int FLOAT_TRUNCATE ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 scalar_t__ HAVE_slt ; 
 int /*<<< orphan*/  LCT_CONST ; 
 int /*<<< orphan*/  LSHIFT_EXPR ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  MODE_INT ; 
 scalar_t__ MODE_PARTIAL_INT ; 
 int /*<<< orphan*/  NE ; 
 int NULL_RTX ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 int FUNC15 (int) ; 
 int SIGN_EXTEND ; 
 int STORE_FLAG_VALUE ; 
 scalar_t__ SUBREG ; 
 int FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (int) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 scalar_t__ UNITS_PER_WORD ; 
 int UNKNOWN ; 
 scalar_t__ FUNC20 (int) ; 
 int VOIDmode ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 int FUNC21 (int,int) ; 
 int ZERO_EXTEND ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC23 (int,int,int) ; 
 int const0_rtx ; 
 int FUNC24 (int,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int FUNC26 (int) ; 
 scalar_t__* direct_load ; 
 int /*<<< orphan*/  FUNC27 (int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC30 (int,int,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC31 (int,int) ; 
 int /*<<< orphan*/  FUNC32 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int FUNC35 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC36 (int,int) ; 
 int /*<<< orphan*/  FUNC37 (int) ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int FUNC39 (int,int) ; 
 int FUNC40 (int) ; 
 int /*<<< orphan*/  FUNC41 (int,int) ; 
 int /*<<< orphan*/  FUNC42 (int,int) ; 
 int /*<<< orphan*/  FUNC43 (int,int) ; 
 int /*<<< orphan*/  FUNC44 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int) ; 
 int FUNC46 () ; 
 TYPE_6__* insn_data ; 
 int /*<<< orphan*/  FUNC47 (int) ; 
 int FUNC48 (int,int,int,int) ; 
 scalar_t__ optimize ; 
 scalar_t__ FUNC49 (int,int) ; 
 TYPE_3__* sext_optab ; 
 int FUNC50 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (scalar_t__) ; 
 int FUNC52 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 () ; 
 TYPE_3__* trunc_optab ; 
 int word_mode ; 

void
FUNC54 (rtx to, rtx from, int unsignedp)
{
  enum machine_mode to_mode = FUNC4 (to);
  enum machine_mode from_mode = FUNC4 (from);
  int to_real = FUNC15 (to_mode);
  int from_real = FUNC15 (from_mode);
  enum insn_code code;
  rtx libcall;

  /* rtx code for making an equivalent value.  */
  enum rtx_code equiv_code = (unsignedp < 0 ? UNKNOWN
			      : (unsignedp ? ZERO_EXTEND : SIGN_EXTEND));


  FUNC37 (to_real == from_real);
  FUNC37 (to_mode != BLKmode);
  FUNC37 (from_mode != BLKmode);

  /* If the source and destination are already the same, then there's
     nothing to do.  */
  if (to == from)
    return;

  /* If FROM is a SUBREG that indicates that we have already done at least
     the required extension, strip it.  We don't handle such SUBREGs as
     TO here.  */

  if (FUNC3 (from) == SUBREG && FUNC17 (from)
      && (FUNC8 (FUNC4 (FUNC18 (from)))
	  >= FUNC8 (to_mode))
      && FUNC16 (from) == unsignedp)
    from = FUNC39 (to_mode, from), from_mode = to_mode;

  FUNC37 (FUNC3 (to) != SUBREG || !FUNC17 (to));

  if (to_mode == from_mode
      || (from_mode == VOIDmode && FUNC1 (from)))
    {
      FUNC31 (to, from);
      return;
    }

  if (FUNC20 (to_mode) || FUNC20 (from_mode))
    {
      FUNC37 (FUNC5 (from_mode) == FUNC5 (to_mode));

      if (FUNC20 (to_mode))
	from = FUNC50 (to_mode, from, FUNC4 (from), 0);
      else
	to = FUNC50 (from_mode, to, FUNC4 (to), 0);

      FUNC31 (to, from);
      return;
    }

  if (FUNC3 (to) == CONCAT && FUNC3 (from) == CONCAT)
    {
      FUNC54 (FUNC21 (to, 0), FUNC21 (from, 0), unsignedp);
      FUNC54 (FUNC21 (to, 1), FUNC21 (from, 1), unsignedp);
      return;
    }

  if (to_real)
    {
      rtx value, insns;
      convert_optab tab;

      FUNC37 ((FUNC7 (from_mode)
		   != FUNC7 (to_mode))
		  || (FUNC2 (from_mode)
		      != FUNC2 (to_mode)));

      if (FUNC7 (from_mode) == FUNC7 (to_mode))
	/* Conversion between decimal float and binary float, same size.  */
	tab = FUNC2 (from_mode) ? trunc_optab : sext_optab;
      else if (FUNC7 (from_mode) < FUNC7 (to_mode))
	tab = sext_optab;
      else
	tab = trunc_optab;

      /* Try converting directly if the insn is supported.  */

      code = tab->handlers[to_mode][from_mode].insn_code;
      if (code != CODE_FOR_nothing)
	{
	  FUNC33 (code, to, from,
			  tab == sext_optab ? FLOAT_EXTEND : FLOAT_TRUNCATE);
	  return;
	}

      /* Otherwise use a libcall.  */
      libcall = tab->handlers[to_mode][from_mode].libfunc;

      /* Is this conversion implemented yet?  */
      FUNC37 (libcall);

      FUNC53 ();
      value = FUNC30 (libcall, NULL_RTX, LCT_CONST, to_mode,
				       1, from, from_mode);
      insns = FUNC46 ();
      FUNC34 ();
      FUNC29 (insns, to, value,
			  tab == trunc_optab ? FUNC43 (to_mode,
								       from)
			  : FUNC42 (to_mode, from));
      return;
    }

  /* Handle pointer conversion.  */			/* SPEE 900220.  */
  /* Targets are expected to provide conversion insns between PxImode and
     xImode for all MODE_PARTIAL_INT modes they use, but no others.  */
  if (FUNC6 (to_mode) == MODE_PARTIAL_INT)
    {
      enum machine_mode full_mode
	= FUNC52 (FUNC5 (to_mode), MODE_INT);

      FUNC37 (trunc_optab->handlers[to_mode][full_mode].insn_code
		  != CODE_FOR_nothing);

      if (full_mode != from_mode)
	from = FUNC24 (full_mode, from, unsignedp);
      FUNC33 (trunc_optab->handlers[to_mode][full_mode].insn_code,
		      to, from, UNKNOWN);
      return;
    }
  if (FUNC6 (from_mode) == MODE_PARTIAL_INT)
    {
      rtx new_from;
      enum machine_mode full_mode
	= FUNC52 (FUNC5 (from_mode), MODE_INT);

      FUNC37 (sext_optab->handlers[full_mode][from_mode].insn_code
		  != CODE_FOR_nothing);

      if (to_mode == full_mode)
	{
	  FUNC33 (sext_optab->handlers[full_mode][from_mode].insn_code,
			  to, from, UNKNOWN);
	  return;
	}

      new_from = FUNC40 (full_mode);
      FUNC33 (sext_optab->handlers[full_mode][from_mode].insn_code,
		      new_from, from, UNKNOWN);

      /* else proceed to integer conversions below.  */
      from_mode = full_mode;
      from = new_from;
    }

  /* Now both modes are integers.  */

  /* Handle expanding beyond a word.  */
  if (FUNC5 (from_mode) < FUNC5 (to_mode)
      && FUNC5 (to_mode) > BITS_PER_WORD)
    {
      rtx insns;
      rtx lowpart;
      rtx fill_value;
      rtx lowfrom;
      int i;
      enum machine_mode lowpart_mode;
      int nwords = FUNC0 (FUNC8 (to_mode), UNITS_PER_WORD);

      /* Try converting directly if the insn is supported.  */
      if ((code = FUNC23 (to_mode, from_mode, unsignedp))
	  != CODE_FOR_nothing)
	{
	  /* If FROM is a SUBREG, put it into a register.  Do this
	     so that we always generate the same set of insns for
	     better cse'ing; if an intermediate assignment occurred,
	     we won't be doing the operation directly on the SUBREG.  */
	  if (optimize > 0 && FUNC3 (from) == SUBREG)
	    from = FUNC36 (from_mode, from);
	  FUNC33 (code, to, from, equiv_code);
	  return;
	}
      /* Next, try converting via full word.  */
      else if (FUNC5 (from_mode) < BITS_PER_WORD
	       && ((code = FUNC23 (to_mode, word_mode, unsignedp))
		   != CODE_FOR_nothing))
	{
	  if (FUNC14 (to))
	    {
	      if (FUNC49 (to, from))
		from = FUNC36 (from_mode, from);
	      FUNC28 (FUNC41 (VOIDmode, to));
	    }
	  FUNC54 (FUNC39 (word_mode, to), from, unsignedp);
	  FUNC33 (code, to,
			  FUNC39 (word_mode, to), equiv_code);
	  return;
	}

      /* No special multiword conversion insn; do it by hand.  */
      FUNC53 ();

      /* Since we will turn this into a no conflict block, we must ensure
	 that the source does not overlap the target.  */

      if (FUNC49 (to, from))
	from = FUNC36 (from_mode, from);

      /* Get a copy of FROM widened to a word, if necessary.  */
      if (FUNC5 (from_mode) < BITS_PER_WORD)
	lowpart_mode = word_mode;
      else
	lowpart_mode = from_mode;

      lowfrom = FUNC24 (lowpart_mode, from, unsignedp);

      lowpart = FUNC39 (lowpart_mode, to);
      FUNC31 (lowpart, lowfrom);

      /* Compute the value to put in each remaining word.  */
      if (unsignedp)
	fill_value = const0_rtx;
      else
	{
#ifdef HAVE_slt
	  if (HAVE_slt
	      && insn_data[(int) CODE_FOR_slt].operand[0].mode == word_mode
	      && STORE_FLAG_VALUE == -1)
	    {
	      emit_cmp_insn (lowfrom, const0_rtx, NE, NULL_RTX,
			     lowpart_mode, 0);
	      fill_value = gen_reg_rtx (word_mode);
	      emit_insn (gen_slt (fill_value));
	    }
	  else
#endif
	    {
	      fill_value
		= FUNC35 (RSHIFT_EXPR, lowpart_mode, lowfrom,
				FUNC51 (FUNC5 (lowpart_mode) - 1),
				NULL_RTX, 0);
	      fill_value = FUNC24 (word_mode, fill_value, 1);
	    }
	}

      /* Fill the remaining words.  */
      for (i = FUNC8 (lowpart_mode) / UNITS_PER_WORD; i < nwords; i++)
	{
	  int index = (WORDS_BIG_ENDIAN ? nwords - i - 1 : i);
	  rtx subword = FUNC48 (to, index, 1, to_mode);

	  FUNC37 (subword);

	  if (fill_value != subword)
	    FUNC31 (subword, fill_value);
	}

      insns = FUNC46 ();
      FUNC34 ();

      FUNC32 (insns, to, from, NULL_RTX,
			      FUNC44 (equiv_code, to_mode, FUNC25 (from)));
      return;
    }

  /* Truncating multi-word to a word or less.  */
  if (FUNC5 (from_mode) > BITS_PER_WORD
      && FUNC5 (to_mode) <= BITS_PER_WORD)
    {
      if (!((FUNC11 (from)
	     && ! FUNC12 (from)
	     && direct_load[(int) to_mode]
	     && ! FUNC47 (FUNC21 (from, 0)))
	    || FUNC14 (from)
	    || FUNC3 (from) == SUBREG))
	from = FUNC36 (from_mode, from);
      FUNC54 (to, FUNC39 (word_mode, from), 0);
      return;
    }

  /* Now follow all the conversions between integers
     no more than a word long.  */

  /* For truncation, usually we can just refer to FROM in a narrower mode.  */
  if (FUNC5 (to_mode) < FUNC5 (from_mode)
      && FUNC19 (FUNC5 (to_mode),
				FUNC5 (from_mode)))
    {
      if (!((FUNC11 (from)
	     && ! FUNC12 (from)
	     && direct_load[(int) to_mode]
	     && ! FUNC47 (FUNC21 (from, 0)))
	    || FUNC14 (from)
	    || FUNC3 (from) == SUBREG))
	from = FUNC36 (from_mode, from);
      if (FUNC14 (from) && FUNC13 (from) < FIRST_PSEUDO_REGISTER
	  && ! FUNC10 (FUNC13 (from), to_mode))
	from = FUNC26 (from);
      FUNC31 (to, FUNC39 (to_mode, from));
      return;
    }

  /* Handle extension.  */
  if (FUNC5 (to_mode) > FUNC5 (from_mode))
    {
      /* Convert directly if that works.  */
      if ((code = FUNC23 (to_mode, from_mode, unsignedp))
	  != CODE_FOR_nothing)
	{
	  FUNC33 (code, to, from, equiv_code);
	  return;
	}
      else
	{
	  enum machine_mode intermediate;
	  rtx tmp;
	  tree shift_amount;

	  /* Search for a mode to convert via.  */
	  for (intermediate = from_mode; intermediate != VOIDmode;
	       intermediate = FUNC9 (intermediate))
	    if (((FUNC23 (to_mode, intermediate, unsignedp)
		  != CODE_FOR_nothing)
		 || (FUNC8 (to_mode) < FUNC8 (intermediate)
		     && FUNC19 (FUNC5 (to_mode),
					       FUNC5 (intermediate))))
		&& (FUNC23 (intermediate, from_mode, unsignedp)
		    != CODE_FOR_nothing))
	      {
		FUNC54 (to, FUNC24 (intermediate, from,
						   unsignedp), unsignedp);
		return;
	      }

	  /* No suitable intermediate mode.
	     Generate what we need with	shifts.  */
	  shift_amount = FUNC22 (NULL_TREE,
					FUNC5 (to_mode)
					- FUNC5 (from_mode));
	  from = FUNC39 (to_mode, FUNC36 (from_mode, from));
	  tmp = FUNC35 (LSHIFT_EXPR, to_mode, from, shift_amount,
			      to, unsignedp);
	  tmp = FUNC35 (RSHIFT_EXPR, to_mode, tmp, shift_amount,
			      to, unsignedp);
	  if (tmp != to)
	    FUNC31 (to, tmp);
	  return;
	}
    }

  /* Support special truncate insns for certain modes.  */
  if (trunc_optab->handlers[to_mode][from_mode].insn_code != CODE_FOR_nothing)
    {
      FUNC33 (trunc_optab->handlers[to_mode][from_mode].insn_code,
		      to, from, UNKNOWN);
      return;
    }

  /* Handle truncation of volatile memrefs, and so on;
     the things that couldn't be truncated directly,
     and for which there was no special instruction.

     ??? Code above formerly short-circuited this, for most integer
     mode pairs, with a force_reg in from_mode followed by a recursive
     call to this routine.  Appears always to have been wrong.  */
  if (FUNC5 (to_mode) < FUNC5 (from_mode))
    {
      rtx temp = FUNC36 (to_mode, FUNC39 (to_mode, from));
      FUNC31 (to, temp);
      return;
    }

  /* Mode combination is not recognized.  */
  FUNC38 ();
}