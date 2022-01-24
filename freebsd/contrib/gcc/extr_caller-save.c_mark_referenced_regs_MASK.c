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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int CC0 ; 
 int CLOBBER ; 
 int FIRST_PSEUDO_REGISTER ; 
 int FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (size_t) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int MEM ; 
 int PC ; 
 int REG ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int SET ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int SUBREG ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ UNITS_PER_WORD ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int,int) ; 
 int FUNC13 (scalar_t__,int) ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/  referenced_regs ; 
 scalar_t__* reg_equiv_address ; 
 scalar_t__* reg_equiv_mem ; 
 int* reg_renumber ; 

__attribute__((used)) static void
FUNC14 (rtx x)
{
  enum rtx_code code = FUNC0 (x);
  const char *fmt;
  int i, j;

  if (code == SET)
    FUNC14 (FUNC9 (x));
  if (code == SET || code == CLOBBER)
    {
      x = FUNC7 (x);
      code = FUNC0 (x);
      if ((code == REG && FUNC5 (x) < FIRST_PSEUDO_REGISTER)
	  || code == PC || code == CC0
	  || (code == SUBREG && FUNC6 (FUNC10 (x))
	      && FUNC5 (FUNC10 (x)) < FIRST_PSEUDO_REGISTER
	      /* If we're setting only part of a multi-word register,
		 we shall mark it as referenced, because the words
		 that are not being set should be restored.  */
	      && ((FUNC2 (FUNC1 (x))
		   >= FUNC2 (FUNC1 (FUNC10 (x))))
		  || (FUNC2 (FUNC1 (FUNC10 (x)))
		      <= UNITS_PER_WORD))))
	return;
    }
  if (code == MEM || code == SUBREG)
    {
      x = FUNC11 (x, 0);
      code = FUNC0 (x);
    }

  if (code == REG)
    {
      int regno = FUNC5 (x);
      int hardregno = (regno < FIRST_PSEUDO_REGISTER ? regno
		       : reg_renumber[regno]);

      if (hardregno >= 0)
	{
	  int nregs = hard_regno_nregs[hardregno][FUNC1 (x)];
	  while (nregs-- > 0)
	    FUNC8 (referenced_regs, hardregno + nregs);
	}
      /* If this is a pseudo that did not get a hard register, scan its
	 memory location, since it might involve the use of another
	 register, which might be saved.  */
      else if (reg_equiv_mem[regno] != 0)
	FUNC14 (FUNC11 (reg_equiv_mem[regno], 0));
      else if (reg_equiv_address[regno] != 0)
	FUNC14 (reg_equiv_address[regno]);
      return;
    }

  fmt = FUNC3 (code);
  for (i = FUNC4 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	FUNC14 (FUNC11 (x, i));
      else if (fmt[i] == 'E')
	for (j = FUNC13 (x, i) - 1; j >= 0; j--)
	  FUNC14 (FUNC12 (x, i, j));
    }
}