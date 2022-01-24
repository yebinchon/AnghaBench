#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {scalar_t__ locs; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ VALUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

int
FUNC7 (rtx x, int only_useless)
{
  enum rtx_code code = FUNC1 (x);
  const char *fmt = FUNC2 (code);
  int i, j;

  if (FUNC1 (x) == VALUE
      && (! only_useless || FUNC0 (x)->locs == 0))
    return 1;

  for (i = FUNC3 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e' && FUNC7 (FUNC4 (x, i), only_useless))
	return 1;
      else if (fmt[i] == 'E')
	for (j = 0; j < FUNC6 (x, i); j++)
	  if (FUNC7 (FUNC5 (x, i, j), only_useless))
	    return 1;
    }

  return 0;
}