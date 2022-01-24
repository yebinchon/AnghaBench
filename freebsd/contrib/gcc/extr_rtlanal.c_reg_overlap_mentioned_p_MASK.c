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
#define  CC0 137 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
#define  MEM 136 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  PARALLEL 135 
#define  PC 134 
#define  REG 133 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
#define  SCRATCH 132 
#define  SIGN_EXTRACT 131 
#define  STRICT_LOW_PART 130 
#define  SUBREG 129 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
#define  ZERO_EXTRACT 128 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int** hard_regno_nregs ; 
 int FUNC12 (unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ) ; 

int
FUNC15 (rtx x, rtx in)
{
  unsigned int regno, endregno;

  /* If either argument is a constant, then modifying X can not
     affect IN.  Here we look at IN, we can profitably combine
     CONSTANT_P (x) with the switch statement below.  */
  if (FUNC0 (in))
    return 0;

 recurse:
  switch (FUNC1 (x))
    {
    case STRICT_LOW_PART:
    case ZERO_EXTRACT:
    case SIGN_EXTRACT:
      /* Overly conservative.  */
      x = FUNC8 (x, 0);
      goto recurse;

    case SUBREG:
      regno = FUNC6 (FUNC7 (x));
      if (regno < FIRST_PSEUDO_REGISTER)
	regno = FUNC14 (x);
      goto do_reg;

    case REG:
      regno = FUNC6 (x);
    do_reg:
      endregno = regno + (regno < FIRST_PSEUDO_REGISTER
			  ? hard_regno_nregs[regno][FUNC2 (x)] : 1);
      return FUNC12 (regno, endregno, in, (rtx*) 0);

    case MEM:
      {
	const char *fmt;
	int i;

	if (FUNC5 (in))
	  return 1;

	fmt = FUNC3 (FUNC1 (in));
	for (i = FUNC4 (FUNC1 (in)) - 1; i >= 0; i--)
	  if (fmt[i] == 'e')
	    {
	      if (FUNC15 (x, FUNC8 (in, i)))
		return 1;
	    }
	  else if (fmt[i] == 'E')
	    {
	      int j;
	      for (j = FUNC10 (in, i) - 1; j >= 0; --j)
		if (FUNC15 (x, FUNC9 (in, i, j)))
		  return 1;
	    }

	return 0;
      }

    case SCRATCH:
    case PC:
    case CC0:
      return FUNC13 (x, in);

    case PARALLEL:
      {
	int i;

	/* If any register in here refers to it we return true.  */
	for (i = FUNC10 (x, 0) - 1; i >= 0; i--)
	  if (FUNC8 (FUNC9 (x, 0, i), 0) != 0
	      && FUNC15 (FUNC8 (FUNC9 (x, 0, i), 0), in))
	    return 1;
	return 0;
      }

    default:
      FUNC11 (FUNC0 (x));
      return 0;
    }
}