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
 scalar_t__ LABEL_REF ; 
 scalar_t__ UNSPEC ; 
 scalar_t__ UNSPEC_TLS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

int
FUNC7 (rtx x)
{
  const char * fmt;
  int i;

  if (FUNC0 (x) == LABEL_REF)
    return 1;

  /* UNSPEC_TLS entries for a symbol include a LABEL_REF for the referencing
     instruction, but they are constant offsets, not symbols.  */
  if (FUNC0 (x) == UNSPEC && FUNC4 (x, 1) == UNSPEC_TLS)
    return 0;

  fmt = FUNC1 (FUNC0 (x));
  for (i = FUNC2 (FUNC0 (x)) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'E')
	{
	  int j;

	  for (j = FUNC6 (x, i) - 1; j >= 0; j--)
	    if (FUNC7 (FUNC5 (x, i, j)))
	      return 1;
	}
      else if (fmt[i] == 'e' && FUNC7 (FUNC3 (x, i)))
	return 1;
    }

  return 0;
}