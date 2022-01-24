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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7 (rtx memref, rtx start, rtx end)
{
  rtx insn;

  for (insn = FUNC3 (start); insn != FUNC3 (end);
       insn = FUNC3 (insn))
    {
      if (!FUNC2 (insn))
	continue;
      
      if (FUNC5 (memref, FUNC4 (insn)))
	return 1;

      /* Nonconst functions may access memory.  */
      if (FUNC0 (insn)
	  && (! FUNC1 (insn)
	      || FUNC6 (insn)))
	return 1;
    }

  return 0;
}