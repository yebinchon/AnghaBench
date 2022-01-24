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
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static rtx
FUNC6 (rtx insn)
{
  rtx last = FUNC4 ();
  int code;

  insn = FUNC2 (insn);
  code = FUNC5 (insn);

  if (code >= 0)
    {
      FUNC3 (insn);
      /* We want constrain operands to treat this insn strictly in its
	 validity determination, i.e., the way it would after reload has
	 completed.  */
      if (FUNC0 (1))
	return insn;
    }

  FUNC1 (last);
  return NULL;
}