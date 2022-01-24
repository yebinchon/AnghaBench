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
 scalar_t__ BLKmode ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ SCRATCH ; 
 scalar_t__ USE ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 

int
FUNC7 (rtx insn)
{
  rtx link;

  if (!FUNC1 (insn) || ! FUNC2 (insn))
    return 0;

  /* Look for the note that differentiates const and pure functions.  */
  for (link = FUNC0 (insn); link; link = FUNC6 (link, 1))
    {
      rtx u, m;

      if (FUNC3 (u = FUNC6 (link, 0)) == USE
	  && FUNC5 (m = FUNC6 (u, 0)) && FUNC4 (m) == BLKmode
	  && FUNC3 (FUNC6 (m, 0)) == SCRATCH)
	return 1;
    }

  return 0;
}