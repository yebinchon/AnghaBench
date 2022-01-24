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

/* Variables and functions */
 unsigned int BITS_PER_WORD ; 
 scalar_t__ CONCAT ; 
 size_t FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 size_t FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int** hard_regno_nregs ; 
 scalar_t__ FUNC12 (int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,unsigned int,unsigned int,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC14 (rtx cplx, rtx val, bool imag_p)
{
  enum machine_mode cmode;
  enum machine_mode imode;
  unsigned ibitsize;

  if (FUNC0 (cplx) == CONCAT)
    {
      FUNC10 (FUNC8 (cplx, imag_p), val);
      return;
    }

  cmode = FUNC1 (cplx);
  imode = FUNC3 (cmode);
  ibitsize = FUNC2 (imode);

  /* For MEMs simplify_gen_subreg may generate an invalid new address
     because, e.g., the original address is considered mode-dependent
     by the target, which restricts simplify_subreg from invoking
     adjust_address_nv.  Instead of preparing fallback support for an
     invalid address, we call adjust_address_nv directly.  */
  if (FUNC5 (cplx))
    {
      FUNC10 (FUNC9 (cplx, imode,
					 imag_p ? FUNC4 (imode) : 0),
		      val);
      return;
    }

  /* If the sub-object is at least word sized, then we know that subregging
     will work.  This special case is important, since store_bit_field
     wants to operate on integer modes, and there's rarely an OImode to
     correspond to TCmode.  */
  if (ibitsize >= BITS_PER_WORD
      /* For hard regs we have exact predicates.  Assume we can split
	 the original object if it spans an even number of hard regs.
	 This special case is important for SCmode on 64-bit platforms
	 where the natural size of floating-point regs is 32-bit.  */
      || (FUNC7 (cplx)
	  && FUNC6 (cplx) < FIRST_PSEUDO_REGISTER
	  && hard_regno_nregs[FUNC6 (cplx)][cmode] % 2 == 0))
    {
      rtx part = FUNC12 (imode, cplx, cmode,
				      imag_p ? FUNC4 (imode) : 0);
      if (part)
        {
	  FUNC10 (part, val);
	  return;
	}
      else
	/* simplify_gen_subreg may fail for sub-word MEMs.  */
	FUNC11 (FUNC5 (cplx) && ibitsize < BITS_PER_WORD);
    }

  FUNC13 (cplx, ibitsize, imag_p ? ibitsize : 0, imode, val);
}