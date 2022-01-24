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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum group_termination { ____Placeholder_group_termination } group_termination ;
typedef  enum attr_type { ____Placeholder_attr_type } attr_type ;

/* Variables and functions */
 int current_group ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int previous_group ; 

__attribute__((used)) static bool
FUNC4 (rtx insn, enum group_termination which_group)
{
  enum attr_type type;

  if (! insn)
    return false;

  type = FUNC0 (insn);

  if (FUNC3 (insn))
    return true;

  if (which_group == current_group)
    {
      if (FUNC1 (insn))
	return true;
      return false;
    }
  else if (which_group == previous_group)
    {
      if (FUNC2 (insn))
	return true;
      return false;
    }

  return false;
}