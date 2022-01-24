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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ SEQUENCE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ current_function_epilogue_delay_list ; 
 scalar_t__ current_function_profile ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ profile_arc_flag ; 

int
FUNC9 (void)
{
  rtx insn;
  rtx link;

  if (current_function_profile || profile_arc_flag)
    return 0;

  for (insn = FUNC8 (); insn; insn = FUNC2 (insn))
    {
      if (FUNC0 (insn)
	  && ! FUNC5 (insn))
	return 0;
      if (FUNC3 (insn)
	  && FUNC1 (FUNC4 (insn)) == SEQUENCE
	  && FUNC0 (FUNC7 (FUNC4 (insn), 0, 0))
	  && ! FUNC5 (FUNC7 (FUNC4 (insn), 0, 0)))
	return 0;
    }
  for (link = current_function_epilogue_delay_list;
       link;
       link = FUNC6 (link, 1))
    {
      insn = FUNC6 (link, 0);

      if (FUNC0 (insn)
	  && ! FUNC5 (insn))
	return 0;
      if (FUNC3 (insn)
	  && FUNC1 (FUNC4 (insn)) == SEQUENCE
	  && FUNC0 (FUNC7 (FUNC4 (insn), 0, 0))
	  && ! FUNC5 (FUNC7 (FUNC4 (insn), 0, 0)))
	return 0;
    }

  return 1;
}