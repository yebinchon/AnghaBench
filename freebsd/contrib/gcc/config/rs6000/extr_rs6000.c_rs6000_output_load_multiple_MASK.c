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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SImode ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *
FUNC6 (rtx operands[3])
{
  /* We have to handle the case where the pseudo used to contain the address
     is assigned to one of the output registers.  */
  int i, j;
  int words = FUNC2 (operands[0], 0);
  rtx xop[10];

  if (FUNC2 (operands[0], 0) == 1)
    return "{l|lwz} %2,0(%1)";

  for (i = 0; i < words; i++)
    if (FUNC5 (FUNC1 (operands[2]) + i,
			   FUNC1 (operands[2]) + i + 1, operands[1], 0))
      {
	if (i == words-1)
	  {
	    xop[0] = FUNC0 (4 * (words-1));
	    xop[1] = operands[1];
	    xop[2] = operands[2];
	    FUNC4 ("{lsi|lswi} %2,%1,%0\n\t{l|lwz} %1,%0(%1)", xop);
	    return "";
	  }
	else if (i == 0)
	  {
	    xop[0] = FUNC0 (4 * (words-1));
	    xop[1] = operands[1];
	    xop[2] = FUNC3 (SImode, FUNC1 (operands[2]) + 1);
	    FUNC4 ("{cal %1,4(%1)|addi %1,%1,4}\n\t{lsi|lswi} %2,%1,%0\n\t{l|lwz} %1,-4(%1)", xop);
	    return "";
	  }
	else
	  {
	    for (j = 0; j < words; j++)
	      if (j != i)
		{
		  xop[0] = FUNC0 (j * 4);
		  xop[1] = operands[1];
		  xop[2] = FUNC3 (SImode, FUNC1 (operands[2]) + j);
		  FUNC4 ("{l|lwz} %2,%0(%1)", xop);
		}
	    xop[0] = FUNC0 (i * 4);
	    xop[1] = operands[1];
	    FUNC4 ("{l|lwz} %1,%0(%1)", xop);
	    return "";
	  }
      }

  return "{lsi|lswi} %2,%1,%N0";
}