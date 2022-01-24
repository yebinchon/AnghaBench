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
 int LABEL_REF ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int SYMBOL_REF ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static rtx
FUNC5 (rtx x)
{
  int i;
  enum rtx_code code;
  const char *fmt;

  code = FUNC0 (x);
  if (code == SYMBOL_REF || code == LABEL_REF)
    return x;
  if (FUNC3 (x))
    return 0;

  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    {
      rtx t;

      if (fmt[i] == 'e')
	{
	  t = FUNC5 (FUNC4 (x, i));
	  if (t != 0)
	    return t;
	}
      else if (fmt[i] == 'E')
	break;
    }
  return 0;
}