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
typedef  int /*<<< orphan*/  regset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
#define  CLOBBER 129 
 int FIRST_PSEUDO_REGISTER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  SET 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/  pc_rtx ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC10 (rtx exp, regset nonequal)
{
  int regno;
  rtx dest;
  switch (FUNC1 (exp))
    {
      /* In case we do clobber the register, mark it as equal, as we know the
	 value is dead so it don't have to match.  */
    case CLOBBER:
      if (FUNC4 (FUNC8 (exp, 0)))
	{
	  dest = FUNC8 (exp, 0);
	  regno = FUNC3 (dest);
	  FUNC0 (nonequal, regno);
	  if (regno < FIRST_PSEUDO_REGISTER)
	    {
	      int n = hard_regno_nregs[regno][FUNC2 (dest)];
	      while (--n > 0)
		FUNC0 (nonequal, regno + n);
	    }
	}
      return false;

    case SET:
      if (FUNC9 (FUNC5 (exp), FUNC7 (exp)))
	return false;
      dest = FUNC5 (exp);
      if (dest == pc_rtx)
	return false;
      if (!FUNC4 (dest))
	return true;
      regno = FUNC3 (dest);
      FUNC6 (nonequal, regno);
      if (regno < FIRST_PSEUDO_REGISTER)
	{
	  int n = hard_regno_nregs[regno][FUNC2 (dest)];
	  while (--n > 0)
	    FUNC6 (nonequal, regno + n);
	}
      return false;

    default:
      return false;
    }
}