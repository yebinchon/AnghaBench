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
typedef  scalar_t__ tree ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 unsigned int BITS_PER_WORD ; 
 scalar_t__ COMPLEX_CST ; 
 scalar_t__ CONCAT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 size_t FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 unsigned int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 size_t FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int) ; 
 scalar_t__ FUNC14 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__,unsigned int,unsigned int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int** hard_regno_nregs ; 
 scalar_t__ FUNC18 (int,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC19 (rtx cplx, bool imag_p)
{
  enum machine_mode cmode, imode;
  unsigned ibitsize;

  if (FUNC1 (cplx) == CONCAT)
    return FUNC13 (cplx, imag_p);

  cmode = FUNC2 (cplx);
  imode = FUNC4 (cmode);
  ibitsize = FUNC3 (imode);

  /* Special case reads from complex constants that got spilled to memory.  */
  if (FUNC6 (cplx) && FUNC1 (FUNC13 (cplx, 0)) == SYMBOL_REF)
    {
      tree decl = FUNC9 (FUNC13 (cplx, 0));
      if (decl && FUNC10 (decl) == COMPLEX_CST)
	{
	  tree part = imag_p ? FUNC11 (decl) : FUNC12 (decl);
	  if (FUNC0 (part))
	    return FUNC15 (part, NULL_RTX, imode, EXPAND_NORMAL);
	}
    }

  /* For MEMs simplify_gen_subreg may generate an invalid new address
     because, e.g., the original address is considered mode-dependent
     by the target, which restricts simplify_subreg from invoking
     adjust_address_nv.  Instead of preparing fallback support for an
     invalid address, we call adjust_address_nv directly.  */
  if (FUNC6 (cplx))
    return FUNC14 (cplx, imode,
			      imag_p ? FUNC5 (imode) : 0);

  /* If the sub-object is at least word sized, then we know that subregging
     will work.  This special case is important, since extract_bit_field
     wants to operate on integer modes, and there's rarely an OImode to
     correspond to TCmode.  */
  if (ibitsize >= BITS_PER_WORD
      /* For hard regs we have exact predicates.  Assume we can split
	 the original object if it spans an even number of hard regs.
	 This special case is important for SCmode on 64-bit platforms
	 where the natural size of floating-point regs is 32-bit.  */
      || (FUNC8 (cplx)
	  && FUNC7 (cplx) < FIRST_PSEUDO_REGISTER
	  && hard_regno_nregs[FUNC7 (cplx)][cmode] % 2 == 0))
    {
      rtx ret = FUNC18 (imode, cplx, cmode,
				     imag_p ? FUNC5 (imode) : 0);
      if (ret)
        return ret;
      else
	/* simplify_gen_subreg may fail for sub-word MEMs.  */
	FUNC17 (FUNC6 (cplx) && ibitsize < BITS_PER_WORD);
    }

  return FUNC16 (cplx, ibitsize, imag_p ? ibitsize : 0,
			    true, NULL_RTX, imode, imode);
}