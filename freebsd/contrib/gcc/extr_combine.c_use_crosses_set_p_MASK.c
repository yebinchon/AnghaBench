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
struct TYPE_2__ {scalar_t__ last_set; } ;

/* Variables and functions */
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 int MEM ; 
 scalar_t__ PUSH_ARGS ; 
 int REG ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int STACK_POINTER_REGNUM ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int** hard_regno_nregs ; 
 int mem_last_set ; 
 TYPE_1__* reg_stat ; 

__attribute__((used)) static int
FUNC9 (rtx x, int from_cuid)
{
  const char *fmt;
  int i;
  enum rtx_code code = FUNC0 (x);

  if (code == REG)
    {
      unsigned int regno = FUNC5 (x);
      unsigned endreg = regno + (regno < FIRST_PSEUDO_REGISTER
				 ? hard_regno_nregs[regno][FUNC1 (x)] : 1);

#ifdef PUSH_ROUNDING
      /* Don't allow uses of the stack pointer to be moved,
	 because we don't know whether the move crosses a push insn.  */
      if (regno == STACK_POINTER_REGNUM && PUSH_ARGS)
	return 1;
#endif
      for (; regno < endreg; regno++)
	if (reg_stat[regno].last_set
	    && FUNC4 (reg_stat[regno].last_set) > from_cuid)
	  return 1;
      return 0;
    }

  if (code == MEM && mem_last_set > from_cuid)
    return 1;

  fmt = FUNC2 (code);

  for (i = FUNC3 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'E')
	{
	  int j;
	  for (j = FUNC8 (x, i) - 1; j >= 0; j--)
	    if (FUNC9 (FUNC7 (x, i, j), from_cuid))
	      return 1;
	}
      else if (fmt[i] == 'e'
	       && FUNC9 (FUNC6 (x, i), from_cuid))
	return 1;
    }
  return 0;
}