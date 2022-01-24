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
 scalar_t__ EQ_ATTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ alternative_name ; 

__attribute__((used)) static int
FUNC7 (rtx exp)
{
  int i, j;
  const char *fmt;

  if (FUNC0 (exp) == EQ_ATTR && FUNC4 (exp, 0) == alternative_name)
    return 1;

  for (i = 0, fmt = FUNC1 (FUNC0 (exp));
       i < FUNC2 (FUNC0 (exp)); i++)
    switch (*fmt++)
      {
      case 'e':
      case 'u':
	if (FUNC7 (FUNC3 (exp, i)))
	  return 1;
	break;

      case 'E':
	for (j = 0; j < FUNC6 (exp, i); j++)
	  if (FUNC7 (FUNC5 (exp, i, j)))
	    return 1;
	break;
      }

  return 0;
}