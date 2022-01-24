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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ BLKmode ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int MEM ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int,int) ; 
 int FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 

int
FUNC8 (rtx x, int for_alias)
{
  enum rtx_code code;
  int i;
  const char *fmt;

  if (x == 0)
    return 0;

  code = FUNC0 (x);
  if (code == MEM)
    return FUNC1 (x) == BLKmode || FUNC7 (FUNC4 (x, 0), for_alias);

  fmt = FUNC2 (code);
  for (i = FUNC3 (code) - 1; i >= 0; i--)
    if (fmt[i] == 'e')
      {
	if (FUNC8 (FUNC4 (x, i), for_alias))
	  return 1;
      }
    else if (fmt[i] == 'E')
      {
	int j;
	for (j = 0; j < FUNC6 (x, i); j++)
	  if (FUNC8 (FUNC5 (x, i, j), for_alias))
	    return 1;
      }
  return 0;
}