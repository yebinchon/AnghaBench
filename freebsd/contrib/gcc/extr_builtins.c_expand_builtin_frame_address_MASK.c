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
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
 scalar_t__ BUILT_IN_FRAME_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * const0_rtx ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static rtx
FUNC10 (tree fndecl, tree arglist)
{
  /* The argument must be a nonnegative integer constant.
     It counts the number of frames to scan up the stack.
     The value is the return address saved in that frame.  */
  if (arglist == 0)
    /* Warning about missing arg was already issued.  */
    return const0_rtx;
  else if (! FUNC7 (FUNC3 (arglist), 1))
    {
      if (FUNC1 (fndecl) == BUILT_IN_FRAME_ADDRESS)
	FUNC5 ("invalid argument to %<__builtin_frame_address%>");
      else
	FUNC5 ("invalid argument to %<__builtin_return_address%>");
      return const0_rtx;
    }
  else
    {
      rtx tem
	= FUNC6 (FUNC1 (fndecl),
				      FUNC8 (FUNC3 (arglist), 1));

      /* Some ports cannot access arbitrary stack frames.  */
      if (tem == NULL)
	{
	  if (FUNC1 (fndecl) == BUILT_IN_FRAME_ADDRESS)
	    FUNC9 (0, "unsupported argument to %<__builtin_frame_address%>");
	  else
	    FUNC9 (0, "unsupported argument to %<__builtin_return_address%>");
	  return const0_rtx;
	}

      /* For __builtin_frame_address, return what we've got.  */
      if (FUNC1 (fndecl) == BUILT_IN_FRAME_ADDRESS)
	return tem;

      if (!FUNC2 (tem)
	  && ! FUNC0 (tem))
	tem = FUNC4 (Pmode, tem);
      return tem;
    }
}