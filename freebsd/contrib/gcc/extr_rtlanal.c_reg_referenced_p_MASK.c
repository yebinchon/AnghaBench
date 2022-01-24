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
#define  ASM_OPERANDS 139 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  CALL 138 
 int CC0 ; 
#define  CLOBBER 137 
#define  COND_EXEC 136 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
#define  IF_THEN_ELSE 135 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  PARALLEL 134 
 int PC ; 
#define  PREFETCH 133 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
#define  SET 132 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int SUBREG ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
#define  TRAP_IF 131 
 int UNITS_PER_WORD ; 
#define  UNSPEC 130 
#define  UNSPEC_VOLATILE 129 
#define  USE 128 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC17 (rtx x, rtx body)
{
  int i;

  switch (FUNC4 (body))
    {
    case SET:
      if (FUNC16 (x, FUNC10 (body)))
	return 1;

      /* If the destination is anything other than CC0, PC, a REG or a SUBREG
	 of a REG that occupies all of the REG, the insn references X if
	 it is mentioned in the destination.  */
      if (FUNC4 (FUNC9 (body)) != CC0
	  && FUNC4 (FUNC9 (body)) != PC
	  && !FUNC8 (FUNC9 (body))
	  && ! (FUNC4 (FUNC9 (body)) == SUBREG
		&& FUNC8 (FUNC11 (FUNC9 (body)))
		&& (((FUNC6 (FUNC5 (FUNC11 (FUNC9 (body))))
		      + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD)
		    == ((FUNC6 (FUNC5 (FUNC9 (body)))
			 + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD)))
	  && FUNC16 (x, FUNC9 (body)))
	return 1;
      return 0;

    case ASM_OPERANDS:
      for (i = FUNC1 (body) - 1; i >= 0; i--)
	if (FUNC16 (x, FUNC0 (body, i)))
	  return 1;
      return 0;

    case CALL:
    case USE:
    case IF_THEN_ELSE:
      return FUNC16 (x, body);

    case TRAP_IF:
      return FUNC16 (x, FUNC12 (body));

    case PREFETCH:
      return FUNC16 (x, FUNC13 (body, 0));

    case UNSPEC:
    case UNSPEC_VOLATILE:
      for (i = FUNC15 (body, 0) - 1; i >= 0; i--)
	if (FUNC16 (x, FUNC14 (body, 0, i)))
	  return 1;
      return 0;

    case PARALLEL:
      for (i = FUNC15 (body, 0) - 1; i >= 0; i--)
	if (FUNC17 (x, FUNC14 (body, 0, i)))
	  return 1;
      return 0;

    case CLOBBER:
      if (FUNC7 (FUNC13 (body, 0)))
	if (FUNC16 (x, FUNC13 (FUNC13 (body, 0), 0)))
	  return 1;
      return 0;

    case COND_EXEC:
      if (FUNC16 (x, FUNC3 (body)))
	return 1;
      return FUNC17 (x, FUNC2 (body));

    default:
      return 0;
    }
}