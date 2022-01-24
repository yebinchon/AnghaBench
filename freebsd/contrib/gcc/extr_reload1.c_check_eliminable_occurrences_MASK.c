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
struct elim_table {scalar_t__ from_rtx; scalar_t__ can_eliminate; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 int FUNC0 (scalar_t__) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 size_t NUM_ELIMINABLE_REGS ; 
 int REG ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int,int) ; 
 int FUNC6 (scalar_t__,int) ; 
 struct elim_table* reg_eliminate ; 

__attribute__((used)) static void
FUNC7 (rtx x)
{
  const char *fmt;
  int i;
  enum rtx_code code;

  if (x == 0)
    return;

  code = FUNC0 (x);

  if (code == REG && FUNC3 (x) < FIRST_PSEUDO_REGISTER)
    {
      struct elim_table *ep;

      for (ep = reg_eliminate; ep < &reg_eliminate[NUM_ELIMINABLE_REGS]; ep++)
	if (ep->from_rtx == x)
	  ep->can_eliminate = 0;
      return;
    }

  fmt = FUNC1 (code);
  for (i = 0; i < FUNC2 (code); i++, fmt++)
    {
      if (*fmt == 'e')
	FUNC7 (FUNC4 (x, i));
      else if (*fmt == 'E')
	{
	  int j;
	  for (j = 0; j < FUNC6 (x, i); j++)
	    FUNC7 (FUNC5 (x, i, j));
	}
    }
}