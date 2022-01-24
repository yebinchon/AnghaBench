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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

const char *
FUNC3 (int n, rtx *operands)
{
  rtx tmp;

  switch (n)
    {
    case 2:
      if (FUNC0 (operands[4]) > FUNC0 (operands[5]))
	{
	  tmp = operands[4];
	  operands[4] = operands[5];
	  operands[5] = tmp;
	}
      FUNC2 ("ldmia\t%1!, {%4, %5}", operands);
      FUNC2 ("stmia\t%0!, {%4, %5}", operands);
      break;

    case 3:
      if (FUNC0 (operands[4]) > FUNC0 (operands[5]))
	{
	  tmp = operands[4];
	  operands[4] = operands[5];
	  operands[5] = tmp;
	}
      if (FUNC0 (operands[5]) > FUNC0 (operands[6]))
	{
	  tmp = operands[5];
	  operands[5] = operands[6];
	  operands[6] = tmp;
	}
      if (FUNC0 (operands[4]) > FUNC0 (operands[5]))
	{
	  tmp = operands[4];
	  operands[4] = operands[5];
	  operands[5] = tmp;
	}

      FUNC2 ("ldmia\t%1!, {%4, %5, %6}", operands);
      FUNC2 ("stmia\t%0!, {%4, %5, %6}", operands);
      break;

    default:
      FUNC1 ();
    }

  return "";
}