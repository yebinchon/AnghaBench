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
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 

__attribute__((used)) static bool
FUNC5 (rtx *group_insns, rtx next_insn)
{
  int i;
  rtx link;
  int cost;
  int issue_rate = FUNC4 ();

  for (i = 0; i < issue_rate; i++)
    {
      rtx insn = group_insns[i];
      if (!insn)
	continue;
      for (link = FUNC0 (insn); link != 0; link = FUNC1 (link, 1))
	{
	  rtx next = FUNC1 (link, 0);
	  if (next == next_insn)
	    {
	      cost = FUNC2 (insn, link, next_insn);
	      if (FUNC3 (insn, next_insn, link, cost, 0))
		return true;
	    }
	}
    }

  return false;
}