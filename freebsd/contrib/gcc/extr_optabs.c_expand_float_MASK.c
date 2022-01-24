#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum insn_code { ____Placeholder_insn_code } insn_code ;
typedef  TYPE_2__* convert_optab ;
struct TYPE_6__ {TYPE_1__** handlers; } ;
struct TYPE_5__ {scalar_t__ libfunc; } ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int CODE_FOR_nothing ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  FLOAT ; 
 int /*<<< orphan*/  GE ; 
 size_t FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  LCT_CONST ; 
 int /*<<< orphan*/  LT ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 size_t SImode ; 
 int /*<<< orphan*/  UNSIGNED_FLOAT ; 
 int VOIDmode ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  and_optab ; 
 int FUNC8 (int,size_t,int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 scalar_t__ const1_rtx ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (size_t,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,size_t,int,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ FUNC21 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 () ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (size_t,scalar_t__) ; 
 scalar_t__ FUNC28 () ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  ior_optab ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* sfloat_optab ; 
 scalar_t__ FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 TYPE_2__* ufloat_optab ; 

void
FUNC32 (rtx to, rtx from, int unsignedp)
{
  enum insn_code icode;
  rtx target = to;
  enum machine_mode fmode, imode;
  bool can_do_signed = false;

  /* Crash now, because we won't be able to decide which mode to use.  */
  FUNC23 (FUNC2 (from) != VOIDmode);

  /* Look for an insn to do the conversion.  Do it in the specified
     modes if possible; otherwise convert either input, output or both to
     wider mode.  If the integer mode is wider than the mode of FROM,
     we can do the conversion signed even if the input is unsigned.  */

  for (fmode = FUNC2 (to); fmode != VOIDmode;
       fmode = FUNC5 (fmode))
    for (imode = FUNC2 (from); imode != VOIDmode;
	 imode = FUNC5 (imode))
      {
	int doing_unsigned = unsignedp;

	if (fmode != FUNC2 (to)
	    && FUNC30 (fmode) < FUNC3 (FUNC2 (from)))
	  continue;

	icode = FUNC8 (fmode, imode, unsignedp);
	if (icode == CODE_FOR_nothing && unsignedp)
	  {
	    enum insn_code scode = FUNC8 (fmode, imode, 0);
	    if (scode != CODE_FOR_nothing)
	      can_do_signed = true;
	    if (imode != FUNC2 (from))
	      icode = scode, doing_unsigned = 0;
	  }

	if (icode != CODE_FOR_nothing)
	  {
	    if (imode != FUNC2 (from))
	      from = FUNC10 (imode, from, unsignedp);

	    if (fmode != FUNC2 (to))
	      target = FUNC26 (fmode);

	    FUNC19 (icode, target, from,
			    doing_unsigned ? UNSIGNED_FLOAT : FLOAT);

	    if (target != to)
	      FUNC9 (to, target, 0);
	    return;
	  }
      }

  /* Unsigned integer, and no way to convert directly.  For binary
     floating point modes, convert as signed, then conditionally adjust
     the result.  */
  if (unsignedp && can_do_signed && !FUNC1 (FUNC2 (to)))
    {
      rtx label = FUNC25 ();
      rtx temp;
      REAL_VALUE_TYPE offset;

      /* Look for a usable floating mode FMODE wider than the source and at
	 least as wide as the target.  Using FMODE will avoid rounding woes
	 with unsigned values greater than the signed maximum value.  */

      for (fmode = FUNC2 (to);  fmode != VOIDmode;
	   fmode = FUNC5 (fmode))
	if (FUNC3 (FUNC2 (from)) < FUNC3 (fmode)
	    && FUNC8 (fmode, FUNC2 (from), 0) != CODE_FOR_nothing)
	  break;

      if (fmode == VOIDmode)
	{
	  /* There is no such mode.  Pretend the target is wide enough.  */
	  fmode = FUNC2 (to);

	  /* Avoid double-rounding when TO is narrower than FROM.  */
	  if ((FUNC30 (fmode) + 1)
	      < FUNC3 (FUNC2 (from)))
	    {
	      rtx temp1;
	      rtx neglabel = FUNC25 ();

	      /* Don't use TARGET if it isn't a register, is a hard register,
		 or is the wrong mode.  */
	      if (!FUNC7 (target)
		  || FUNC6 (target) < FIRST_PSEUDO_REGISTER
		  || FUNC2 (target) != fmode)
		target = FUNC26 (fmode);

	      imode = FUNC2 (from);
	      FUNC11 ();

	      /* Test whether the sign bit is set.  */
	      FUNC13 (from, const0_rtx, LT, NULL_RTX, imode,
				       0, neglabel);

	      /* The sign bit is not set.  Convert as signed.  */
	      FUNC32 (target, from, 0);
	      FUNC14 (FUNC24 (label));
	      FUNC12 ();

	      /* The sign bit is set.
		 Convert to a usable (positive signed) value by shifting right
		 one bit, while remembering if a nonzero bit was shifted
		 out; i.e., compute  (from & 1) | (from >> 1).  */

	      FUNC15 (neglabel);
	      temp = FUNC21 (imode, and_optab, from, const1_rtx,
				   NULL_RTX, 1, OPTAB_LIB_WIDEN);
	      temp1 = FUNC22 (RSHIFT_EXPR, imode, from, integer_one_node,
				    NULL_RTX, 1);
	      temp = FUNC21 (imode, ior_optab, temp, temp1, temp, 1,
				   OPTAB_LIB_WIDEN);
	      FUNC32 (target, temp, 0);

	      /* Multiply by 2 to undo the shift above.  */
	      temp = FUNC21 (fmode, add_optab, target, target,
				   target, 0, OPTAB_LIB_WIDEN);
	      if (temp != target)
		FUNC18 (target, temp);

	      FUNC11 ();
	      FUNC15 (label);
	      goto done;
	    }
	}

      /* If we are about to do some arithmetic to correct for an
	 unsigned operand, do it in a pseudo-register.  */

      if (FUNC2 (to) != fmode
	  || !FUNC7 (to) || FUNC6 (to) < FIRST_PSEUDO_REGISTER)
	target = FUNC26 (fmode);

      /* Convert as signed integer to floating.  */
      FUNC32 (target, from, 0);

      /* If FROM is negative (and therefore TO is negative),
	 correct its value by 2**bitwidth.  */

      FUNC11 ();
      FUNC13 (from, const0_rtx, GE, NULL_RTX, FUNC2 (from),
			       0, label);


      FUNC29 (&offset, FUNC3 (FUNC2 (from)));
      temp = FUNC21 (fmode, add_optab, target,
			   FUNC0 (offset, fmode),
			   target, 0, OPTAB_LIB_WIDEN);
      if (temp != target)
	FUNC18 (target, temp);

      FUNC11 ();
      FUNC15 (label);
      goto done;
    }

  /* No hardware instruction available; call a library routine.  */
    {
      rtx libfunc;
      rtx insns;
      rtx value;
      convert_optab tab = unsignedp ? ufloat_optab : sfloat_optab;

      if (FUNC4 (FUNC2 (from)) < FUNC4 (SImode))
	from = FUNC10 (SImode, from, unsignedp);

      libfunc = tab->handlers[FUNC2 (to)][FUNC2 (from)].libfunc;
      FUNC23 (libfunc);

      FUNC31 ();

      value = FUNC17 (libfunc, NULL_RTX, LCT_CONST,
				       FUNC2 (to), 1, from,
				       FUNC2 (from));
      insns = FUNC28 ();
      FUNC20 ();

      FUNC16 (insns, target, value,
			  FUNC27 (FUNC2 (to), from));
    }

 done:

  /* Copy result to requested destination
     if we have been computing in a temp location.  */

  if (target != to)
    {
      if (FUNC2 (target) == FUNC2 (to))
	FUNC18 (to, target);
      else
	FUNC9 (to, target, 0);
    }
}