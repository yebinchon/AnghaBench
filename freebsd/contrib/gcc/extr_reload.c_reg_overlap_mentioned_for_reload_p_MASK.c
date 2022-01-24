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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ CC0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ MEM ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ PC ; 
 scalar_t__ PLUS ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ RTX_AUTOINC ; 
 scalar_t__ SCRATCH ; 
 scalar_t__ STRICT_LOW_PART ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int** hard_regno_nregs ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* reg_equiv_constant ; 
 scalar_t__* reg_equiv_memory_loc ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,size_t,int /*<<< orphan*/ ,size_t) ; 

int
FUNC16 (rtx x, rtx in)
{
  int regno, endregno;

  /* Overly conservative.  */
  if (FUNC1 (x) == STRICT_LOW_PART
      || FUNC3 (FUNC1 (x)) == RTX_AUTOINC)
    x = FUNC9 (x, 0);

  /* If either argument is a constant, then modifying X can not affect IN.  */
  if (FUNC0 (x) || FUNC0 (in))
    return 0;
  else if (FUNC1 (x) == SUBREG && FUNC1 (FUNC8 (x)) == MEM)
    return FUNC11 (in);
  else if (FUNC1 (x) == SUBREG)
    {
      regno = FUNC5 (FUNC8 (x));
      if (regno < FIRST_PSEUDO_REGISTER)
	regno += FUNC15 (FUNC5 (FUNC8 (x)),
				      FUNC2 (FUNC8 (x)),
				      FUNC7 (x),
				      FUNC2 (x));
    }
  else if (FUNC6 (x))
    {
      regno = FUNC5 (x);

      /* If this is a pseudo, it must not have been assigned a hard register.
	 Therefore, it must either be in memory or be a constant.  */

      if (regno >= FIRST_PSEUDO_REGISTER)
	{
	  if (reg_equiv_memory_loc[regno])
	    return FUNC11 (in);
	  FUNC10 (reg_equiv_constant[regno]);
	  return 0;
	}
    }
  else if (FUNC4 (x))
    return FUNC11 (in);
  else if (FUNC1 (x) == SCRATCH || FUNC1 (x) == PC
	   || FUNC1 (x) == CC0)
    return FUNC13 (x, in);
  else 
    {
      FUNC10 (FUNC1 (x) == PLUS);

      /* We actually want to know if X is mentioned somewhere inside IN.
	 We must not say that (plus (sp) (const_int 124)) is in
	 (plus (sp) (const_int 64)), since that can lead to incorrect reload
	 allocation when spuriously changing a RELOAD_FOR_OUTPUT_ADDRESS
	 into a RELOAD_OTHER on behalf of another RELOAD_OTHER.  */
      while (FUNC4 (in))
	in = FUNC9 (in, 0);
      if (FUNC6 (in))
	return 0;
      else if (FUNC1 (in) == PLUS)
	return (FUNC14 (x, in)
		|| FUNC16 (x, FUNC9 (in, 0))
		|| FUNC16 (x, FUNC9 (in, 1)));
      else return (FUNC16 (FUNC9 (x, 0), in)
		   || FUNC16 (FUNC9 (x, 1), in));
    }

  endregno = regno + (regno < FIRST_PSEUDO_REGISTER
		      ? hard_regno_nregs[regno][FUNC2 (x)] : 1);

  return FUNC12 (regno, endregno, in, (rtx*) 0);
}