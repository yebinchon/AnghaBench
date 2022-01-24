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
 scalar_t__ MEM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC6 (rtx pat)
{
  const char * fmt;
  int i, j;
  bool ret = false;

  if (FUNC0 (pat) == MEM)
    return true;

  /* Recursively process the pattern.  */
  fmt = FUNC1 (FUNC0 (pat));

  for (i = FUNC2 (FUNC0 (pat)) - 1; i >= 0 && !ret; i--)
    {
      if (fmt[i] == 'e')
	ret |= FUNC6 (FUNC3 (pat, i));
      else if (fmt[i] == 'E')
	for (j = FUNC5 (pat, i) - 1; j >= 0; j--)
	  ret |= FUNC6 (FUNC4 (pat, i, j));
    }

  return ret;
}