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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int MEM ; 
 scalar_t__ PC ; 
 int SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9 (int regno, rtx x)
{
  enum rtx_code code = FUNC0 (x);
  int i, j;
  const char *fmt;

  if (code == MEM)
    {
      if (FUNC8 (regno, regno+1,
			     FUNC5 (x, 0), 0))
	return true;
    }
  else if (code == SET
	   && FUNC0 (FUNC3 (x)) == PC)
    {
      if (FUNC8 (regno, regno+1,
			     FUNC4 (x), 0))
	return true;
    }

  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e'
	  && FUNC9 (regno, FUNC5 (x, i)))
	return true;

      else if (fmt[i] == 'E')
	for (j = 0; j < FUNC7 (x, i); j++)
	  if (FUNC9 (regno, FUNC6 (x, i, j)))
	    return true;
    }
  return false;
}