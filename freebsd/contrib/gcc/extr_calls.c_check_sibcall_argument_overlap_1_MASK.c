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
typedef  scalar_t__ RTX_CODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ MEM ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int) ; 
 int FUNC7 (scalar_t__,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (rtx x)
{
  RTX_CODE code;
  int i, j;
  const char *fmt;

  if (x == NULL_RTX)
    return 0;

  code = FUNC0 (x);

  if (code == MEM)
    return FUNC8 (FUNC5 (x, 0),
						 FUNC2 (FUNC1 (x)));

  /* Scan all subexpressions.  */
  fmt = FUNC3 (code);
  for (i = 0; i < FUNC4 (code); i++, fmt++)
    {
      if (*fmt == 'e')
	{
	  if (FUNC9 (FUNC5 (x, i)))
	    return 1;
	}
      else if (*fmt == 'E')
	{
	  for (j = 0; j < FUNC7 (x, i); j++)
	    if (FUNC9 (FUNC6 (x, i, j)))
	      return 1;
	}
    }
  return 0;
}