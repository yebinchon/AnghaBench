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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int FUNC2 (scalar_t__) ; 
 size_t FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 unsigned int** hard_regno_nregs ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

int
FUNC10 (rtx insn, enum rtx_code code, rtx datum)
{
  /* If it's not a CALL_INSN, it can't possibly have a
     CALL_INSN_FUNCTION_USAGE field, so don't bother checking.  */
  if (!FUNC1 (insn))
    return 0;

  FUNC8 (datum);

  if (!FUNC5 (datum))
    {
      rtx link;

      for (link = FUNC0 (insn);
	   link;
	   link = FUNC6 (link, 1))
	if (FUNC2 (FUNC6 (link, 0)) == code
	    && FUNC9 (datum, FUNC6 (FUNC6 (link, 0), 0)))
	  return 1;
    }
  else
    {
      unsigned int regno = FUNC4 (datum);

      /* CALL_INSN_FUNCTION_USAGE information cannot contain references
	 to pseudo registers, so don't bother checking.  */

      if (regno < FIRST_PSEUDO_REGISTER)
	{
	  unsigned int end_regno
	    = regno + hard_regno_nregs[regno][FUNC3 (datum)];
	  unsigned int i;

	  for (i = regno; i < end_regno; i++)
	    if (FUNC7 (insn, code, i))
	      return 1;
	}
    }

  return 0;
}