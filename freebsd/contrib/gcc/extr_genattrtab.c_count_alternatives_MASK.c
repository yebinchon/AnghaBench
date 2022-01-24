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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ MATCH_OPERAND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (rtx exp)
{
  int i, j, n;
  const char *fmt;

  if (FUNC0 (exp) == MATCH_OPERAND)
    return FUNC8 (FUNC4 (exp, 2));

  for (i = 0, fmt = FUNC1 (FUNC0 (exp));
       i < FUNC2 (FUNC0 (exp)); i++)
    switch (*fmt++)
      {
      case 'e':
      case 'u':
	n = FUNC9 (FUNC3 (exp, i));
	if (n)
	  return n;
	break;

      case 'E':
      case 'V':
	if (FUNC5 (exp, i) != NULL)
	  for (j = 0; j < FUNC7 (exp, i); j++)
	    {
	      n = FUNC9 (FUNC6 (exp, i, j));
	      if (n)
		return n;
	    }
      }

  return 0;
}