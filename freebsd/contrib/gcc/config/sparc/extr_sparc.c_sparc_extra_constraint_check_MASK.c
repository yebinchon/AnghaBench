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
 size_t FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ REG ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_ARCH64 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__* reg_renumber ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ reload_in_progress ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11 (rtx op, int c, int strict)
{
  int reload_ok_mem;

  if (TARGET_ARCH64
      && (c == 'T' || c == 'U'))
    return 0;

  switch (c)
    {
    case 'Q':
      return FUNC7 (op);

    case 'R':
      return FUNC6 (op);

    case 'S':
      return FUNC5 (op);

    case 'U':
      if (! strict
	  || (FUNC0 (op) == REG
	      && (FUNC2 (op) < FIRST_PSEUDO_REGISTER
		  || reg_renumber[FUNC2 (op)] >= 0)))
	return FUNC9 (op);

      return 0;

    case 'W':
    case 'T':
      break;

    case 'Y':
      return FUNC4 (op, FUNC1 (op));

    default:
      return 0;
    }

  /* Our memory extra constraints have to emulate the
     behavior of 'm' and 'o' in order for reload to work
     correctly.  */
  if (FUNC0 (op) == MEM)
    {
      reload_ok_mem = 0;
      if ((TARGET_ARCH64 || FUNC8 (op, 8))
	  && (! strict
	      || FUNC10 (Pmode, FUNC3 (op, 0))))
	reload_ok_mem = 1;
    }
  else
    {
      reload_ok_mem = (reload_in_progress
		       && FUNC0 (op) == REG
		       && FUNC2 (op) >= FIRST_PSEUDO_REGISTER
		       && reg_renumber [FUNC2 (op)] < 0);
    }

  return reload_ok_mem;
}