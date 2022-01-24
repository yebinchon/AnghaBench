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
 int FUNC0 (scalar_t__) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int,int) ; 
 int FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC7 (rtx x)
{
  int i, j;
  const char *fmt;
  enum rtx_code code;

  if (x == 0)
    return false;

  if (FUNC3 (x))
    return true;

  code = FUNC0 (x);
  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  if (FUNC7 (FUNC4 (x, i)))
            return true;
        }
      else if (fmt[i] == 'E')
	for (j = 0; j < FUNC6 (x, i); j++)
	  {
	    if (FUNC7 (FUNC5 (x, i, j)))
              return true;
          }
    }
  return false;
}