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
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static rtx
FUNC7 (rtx insn)
{
  /* Split insns here to get max fine-grain parallelism.  */
  rtx first = FUNC3 (insn);
  rtx last = FUNC6 (FUNC2 (insn), insn, 1);

  if (last == insn)
    return NULL_RTX;

  /* try_split returns the NOTE that INSN became.  */
  FUNC4 (insn);

  /* ??? Coddle to md files that generate subregs in post-reload
     splitters instead of computing the proper hard register.  */
  if (reload_completed && first != last)
    {
      first = FUNC1 (first);
      for (;;)
	{
	  if (FUNC0 (first))
	    FUNC5 (first);
	  if (first == last)
	    break;
	  first = FUNC1 (first);
	}
    }
  return last;
}