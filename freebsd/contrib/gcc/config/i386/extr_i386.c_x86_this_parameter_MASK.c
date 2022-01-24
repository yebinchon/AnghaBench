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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 
 scalar_t__ void_type_node ; 
 int* x86_64_int_parameter_registers ; 

__attribute__((used)) static rtx
FUNC11 (tree function)
{
  tree type = FUNC1 (function);

  if (TARGET_64BIT)
    {
      int n = FUNC5 (FUNC1 (type), type) != 0;
      return FUNC7 (DImode, x86_64_int_parameter_registers[n]);
    }

  if (FUNC8 (type, function) > 0)
    {
      tree parm;

      parm = FUNC3 (type);
      /* Figure out whether or not the function has a variable number of
	 arguments.  */
      for (; parm; parm = FUNC0 (parm))
	if (FUNC2 (parm) == void_type_node)
	  break;
      /* If not, the this parameter is in the first argument.  */
      if (parm)
	{
	  int regno = 0;
	  if (FUNC9 ("fastcall", FUNC4 (type)))
	    regno = 2;
	  return FUNC7 (SImode, regno);
	}
    }

  if (FUNC5 (FUNC1 (type), type))
    return FUNC6 (SImode, FUNC10 (stack_pointer_rtx, 8));
  else
    return FUNC6 (SImode, FUNC10 (stack_pointer_rtx, 4));
}