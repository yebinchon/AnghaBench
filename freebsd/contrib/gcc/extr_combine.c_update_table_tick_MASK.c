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
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {int /*<<< orphan*/  last_set_table_tick; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int FUNC1 (scalar_t__) ; 
 size_t FUNC2 (scalar_t__) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int REG ; 
 unsigned int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/  label_tick ; 
 TYPE_1__* reg_stat ; 

__attribute__((used)) static void
FUNC7 (rtx x)
{
  enum rtx_code code = FUNC1 (x);
  const char *fmt = FUNC3 (code);
  int i;

  if (code == REG)
    {
      unsigned int regno = FUNC5 (x);
      unsigned int endregno
	= regno + (regno < FIRST_PSEUDO_REGISTER
		   ? hard_regno_nregs[regno][FUNC2 (x)] : 1);
      unsigned int r;

      for (r = regno; r < endregno; r++)
	reg_stat[r].last_set_table_tick = label_tick;

      return;
    }

  for (i = FUNC4 (code) - 1; i >= 0; i--)
    /* Note that we can't have an "E" in values stored; see
       get_last_value_validate.  */
    if (fmt[i] == 'e')
      {
	/* Check for identical subexpressions.  If x contains
	   identical subexpression we only have to traverse one of
	   them.  */
	if (i == 0 && FUNC0 (x))
	  {
	    /* Note that at this point x1 has already been
	       processed.  */
	    rtx x0 = FUNC6 (x, 0);
	    rtx x1 = FUNC6 (x, 1);

	    /* If x0 and x1 are identical then there is no need to
	       process x0.  */
	    if (x0 == x1)
	      break;

	    /* If x0 is identical to a subexpression of x1 then while
	       processing x1, x0 has already been processed.  Thus we
	       are done with x.  */
	    if (FUNC0 (x1)
		&& (x0 == FUNC6 (x1, 0) || x0 == FUNC6 (x1, 1)))
	      break;

	    /* If x1 is identical to a subexpression of x0 then we
	       still have to process the rest of x0.  */
	    if (FUNC0 (x0)
		&& (x1 == FUNC6 (x0, 0) || x1 == FUNC6 (x0, 1)))
	      {
		FUNC7 (FUNC6 (x0, x1 == FUNC6 (x0, 0) ? 1 : 0));
		break;
	      }
	  }

	FUNC7 (FUNC6 (x, i));
      }
}