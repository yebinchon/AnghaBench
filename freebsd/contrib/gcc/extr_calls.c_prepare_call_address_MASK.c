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

/* Variables and functions */
 int /*<<< orphan*/  FUNCTION_MODE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SMALL_REGISTER_CLASSES ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  flag_no_function_cse ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ optimize ; 
 int /*<<< orphan*/  static_chain_rtx ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ) ; 

rtx
FUNC8 (rtx funexp, rtx static_chain_value,
		      rtx *call_fusage, int reg_parm_seen, int sibcallp)
{
  /* Make a valid memory address and copy constants through pseudo-regs,
     but not for a constant address if -fno-function-cse.  */
  if (FUNC0 (funexp) != SYMBOL_REF)
    /* If we are using registers for parameters, force the
       function address into a register now.  */
    funexp = ((SMALL_REGISTER_CLASSES && reg_parm_seen)
	      ? FUNC4 (FUNC6 (FUNCTION_MODE, funexp))
	      : FUNC6 (FUNCTION_MODE, funexp));
  else if (! sibcallp)
    {
#ifndef NO_FUNCTION_CSE
      if (optimize && ! flag_no_function_cse)
	funexp = FUNC5 (Pmode, funexp);
#endif
    }

  if (static_chain_value != 0)
    {
      static_chain_value = FUNC2 (Pmode, static_chain_value);
      FUNC3 (static_chain_rtx, static_chain_value);

      if (FUNC1 (static_chain_rtx))
	FUNC7 (call_fusage, static_chain_rtx);
    }

  return funexp;
}