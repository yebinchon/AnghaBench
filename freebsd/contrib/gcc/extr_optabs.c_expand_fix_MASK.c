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
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum insn_code { ____Placeholder_insn_code } insn_code ;
typedef  TYPE_3__* convert_optab ;
struct TYPE_10__ {TYPE_1__* handlers; } ;
struct TYPE_9__ {TYPE_2__** handlers; } ;
struct TYPE_8__ {scalar_t__ libfunc; } ;
struct TYPE_7__ {int insn_code; } ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int CODE_FOR_nothing ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FIX ; 
 int /*<<< orphan*/  GE ; 
 size_t FUNC1 (scalar_t__) ; 
 int FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int FUNC4 (int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 int /*<<< orphan*/  LCT_CONST ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 size_t SImode ; 
 int /*<<< orphan*/  UNSIGNED_FIX ; 
 int VOIDmode ; 
 int FUNC5 (size_t,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC7 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,size_t,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,size_t,int,scalar_t__,size_t) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (size_t,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (size_t,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ftrunc_optab ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (int,size_t) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 () ; 
 scalar_t__ FUNC25 (size_t) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,size_t,scalar_t__) ; 
 scalar_t__ FUNC27 () ; 
 TYPE_6__* mov_optab ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* sfix_optab ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  sub_optab ; 
 TYPE_3__* ufix_optab ; 
 int /*<<< orphan*/  xor_optab ; 

void
FUNC31 (rtx to, rtx from, int unsignedp)
{
  enum insn_code icode;
  rtx target = to;
  enum machine_mode fmode, imode;
  int must_trunc = 0;

  /* We first try to find a pair of modes, one real and one integer, at
     least as wide as FROM and TO, respectively, in which we can open-code
     this conversion.  If the integer mode is wider than the mode of TO,
     we can do the conversion either signed or unsigned.  */

  for (fmode = FUNC1 (from); fmode != VOIDmode;
       fmode = FUNC4 (fmode))
    for (imode = FUNC1 (to); imode != VOIDmode;
	 imode = FUNC4 (imode))
      {
	int doing_unsigned = unsignedp;

	icode = FUNC5 (imode, fmode, unsignedp, &must_trunc);
	if (icode == CODE_FOR_nothing && imode != FUNC1 (to) && unsignedp)
	  icode = FUNC5 (imode, fmode, 0, &must_trunc), doing_unsigned = 0;

	if (icode != CODE_FOR_nothing)
	  {
	    if (fmode != FUNC1 (from))
	      from = FUNC7 (fmode, from, 0);

	    if (must_trunc)
	      {
		rtx temp = FUNC25 (FUNC1 (from));
		from = FUNC20 (FUNC1 (from), ftrunc_optab, from,
				    temp, 0);
	      }

	    if (imode != FUNC1 (to))
	      target = FUNC25 (imode);

	    FUNC17 (icode, target, from,
			    doing_unsigned ? UNSIGNED_FIX : FIX);
	    if (target != to)
	      FUNC6 (to, target, unsignedp);
	    return;
	  }
      }

  /* For an unsigned conversion, there is one more way to do it.
     If we have a signed conversion, we generate code that compares
     the real value to the largest representable positive number.  If if
     is smaller, the conversion is done normally.  Otherwise, subtract
     one plus the highest signed number, convert, and add it back.

     We only need to check all real modes, since we know we didn't find
     anything with a wider integer mode.

     This code used to extend FP value into mode wider than the destination.
     This is not needed.  Consider, for instance conversion from SFmode
     into DImode.

     The hot path through the code is dealing with inputs smaller than 2^63
     and doing just the conversion, so there is no bits to lose.

     In the other path we know the value is positive in the range 2^63..2^64-1
     inclusive.  (as for other imput overflow happens and result is undefined)
     So we know that the most important bit set in mantissa corresponds to
     2^63.  The subtraction of 2^63 should not generate any rounding as it
     simply clears out that bit.  The rest is trivial.  */

  if (unsignedp && FUNC2 (FUNC1 (to)) <= HOST_BITS_PER_WIDE_INT)
    for (fmode = FUNC1 (from); fmode != VOIDmode;
	 fmode = FUNC4 (fmode))
      if (CODE_FOR_nothing != FUNC5 (FUNC1 (to), fmode, 0,
					 &must_trunc))
	{
	  int bitsize;
	  REAL_VALUE_TYPE offset;
	  rtx limit, lab1, lab2, insn;

	  bitsize = FUNC2 (FUNC1 (to));
	  FUNC28 (&offset, bitsize - 1);
	  limit = FUNC0 (offset, fmode);
	  lab1 = FUNC24 ();
	  lab2 = FUNC24 ();

	  if (fmode != FUNC1 (from))
	    from = FUNC7 (fmode, from, 0);

	  /* See if we need to do the subtraction.  */
	  FUNC9 ();
	  FUNC11 (from, limit, GE, NULL_RTX, FUNC1 (from),
				   0, lab1);

	  /* If not, do the signed "fix" and branch around fixup code.  */
	  FUNC31 (to, from, 0);
	  FUNC12 (FUNC23 (lab2));
	  FUNC10 ();

	  /* Otherwise, subtract 2**(N-1), convert to signed number,
	     then add 2**(N-1).  Do the addition using XOR since this
	     will often generate better code.  */
	  FUNC13 (lab1);
	  target = FUNC19 (FUNC1 (from), sub_optab, from, limit,
				 NULL_RTX, 0, OPTAB_LIB_WIDEN);
	  FUNC31 (to, target, 0);
	  target = FUNC19 (FUNC1 (to), xor_optab, to,
				 FUNC22
				 ((HOST_WIDE_INT) 1 << (bitsize - 1),
				  FUNC1 (to)),
				 to, 1, OPTAB_LIB_WIDEN);

	  if (target != to)
	    FUNC16 (to, target);

	  FUNC13 (lab2);

	  if (mov_optab->handlers[(int) FUNC1 (to)].insn_code
	      != CODE_FOR_nothing)
	    {
	      /* Make a place for a REG_NOTE and add it.  */
	      insn = FUNC16 (to, to);
	      FUNC29 (insn,
	                           REG_EQUAL,
				   FUNC26 (UNSIGNED_FIX,
						  FUNC1 (to),
						  FUNC8 (from)));
	    }

	  return;
	}

  /* We can't do it with an insn, so use a library call.  But first ensure
     that the mode of TO is at least as wide as SImode, since those are the
     only library calls we know about.  */

  if (FUNC3 (FUNC1 (to)) < FUNC3 (SImode))
    {
      target = FUNC25 (SImode);

      FUNC31 (target, from, unsignedp);
    }
  else
    {
      rtx insns;
      rtx value;
      rtx libfunc;

      convert_optab tab = unsignedp ? ufix_optab : sfix_optab;
      libfunc = tab->handlers[FUNC1 (to)][FUNC1 (from)].libfunc;
      FUNC21 (libfunc);

      FUNC30 ();

      value = FUNC15 (libfunc, NULL_RTX, LCT_CONST,
				       FUNC1 (to), 1, from,
				       FUNC1 (from));
      insns = FUNC27 ();
      FUNC18 ();

      FUNC14 (insns, target, value,
			  FUNC26 (unsignedp ? UNSIGNED_FIX : FIX,
					 FUNC1 (to), from));
    }

  if (target != to)
    {
      if (FUNC1 (to) == FUNC1 (target))
        FUNC16 (to, target);
      else
        FUNC6 (to, target, 0);
    }
}