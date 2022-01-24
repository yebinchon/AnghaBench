#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int /*<<< orphan*/  force_align_arg_pointer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FORCE_PREFERRED_STACK_BOUNDARY_IN_MAIN ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ix86_force_align_arg_pointer ; 
 int /*<<< orphan*/  ix86_force_align_arg_pointer_string ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtual_incoming_args_rtx ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static rtx
FUNC12 (void)
{
  bool has_force_align_arg_pointer =
    (0 != FUNC10 (ix86_force_align_arg_pointer_string,
			    FUNC6 (FUNC5 (current_function_decl))));
  if ((FORCE_PREFERRED_STACK_BOUNDARY_IN_MAIN
       && FUNC2 (current_function_decl)
       && FUNC3 (FUNC2 (current_function_decl))
       && FUNC1 (current_function_decl))
      || ix86_force_align_arg_pointer
      || has_force_align_arg_pointer)
    {
      /* Nested functions can't realign the stack due to a register
	 conflict.  */
      if (FUNC0 (current_function_decl)
	  && FUNC4 (FUNC0 (current_function_decl)) == FUNCTION_DECL)
	{
	  if (ix86_force_align_arg_pointer)
	    FUNC11 (0, "-mstackrealign ignored for nested functions");
	  if (has_force_align_arg_pointer)
	    FUNC8 ("%s not supported for nested functions",
		   ix86_force_align_arg_pointer_string);
	  return virtual_incoming_args_rtx;
	}
      cfun->machine->force_align_arg_pointer = FUNC9 (Pmode, 2);
      return FUNC7 (cfun->machine->force_align_arg_pointer);
    }
  else
    return virtual_incoming_args_rtx;
}