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
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 int MEM ; 
 scalar_t__ PLUS ; 
 scalar_t__ POST_DEC ; 
 scalar_t__ POST_INC ; 
 scalar_t__ POST_MODIFY ; 
 scalar_t__ PRE_DEC ; 
 scalar_t__ PRE_INC ; 
 scalar_t__ PRE_MODIFY ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int,int) ; 
 int FUNC8 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC9 (rtx x, rtx inced)
{
  enum rtx_code code = FUNC0 (x);
  const char *fmt;
  int i;

  if (code == MEM)
    {
      rtx addr = FUNC6 (x, 0);
      if ((FUNC0 (addr) == PRE_DEC
	   || FUNC0 (addr) == POST_DEC
	   || FUNC0 (addr) == PRE_INC
	   || FUNC0 (addr) == POST_INC)
	  && FUNC6 (addr, 0) == inced)
	return FUNC2 (FUNC1 (x));
      else if ((FUNC0 (addr) == PRE_MODIFY
		|| FUNC0 (addr) == POST_MODIFY)
	       && FUNC0 (FUNC6 (addr, 1)) == PLUS
	       && FUNC6 (addr, 0) == FUNC6 (FUNC6 (addr, 1), 0)
	       && FUNC6 (addr, 0) == inced
	       && FUNC0 (FUNC6 (FUNC6 (addr, 1), 1)) == CONST_INT)
	{
	  i = FUNC5 (FUNC6 (FUNC6 (addr, 1), 1));
	  return i < 0 ? -i : i;
	}
    }

  fmt = FUNC3 (code);
  for (i = FUNC4 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  int tem = FUNC9 (FUNC6 (x, i), inced);
	  if (tem != 0)
	    return tem;
	}
      if (fmt[i] == 'E')
	{
	  int j;
	  for (j = FUNC8 (x, i) - 1; j >= 0; j--)
	    {
	      int tem = FUNC9 (FUNC7 (x, i, j), inced);
	      if (tem != 0)
		return tem;
	    }
	}
    }

  return 0;
}