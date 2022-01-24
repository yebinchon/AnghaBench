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
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 int /*<<< orphan*/  FUNC4 (long) ; 

int
FUNC5 (rtx op)
{
  /* The constraints calling this should only be in
     SFmode move insns, so any constant which cannot
     be moved using a single insn will do.  */
  if (FUNC0 (op) == CONST_DOUBLE)
    {
      REAL_VALUE_TYPE r;
      long i;

      FUNC1 (r, op);
      FUNC2 (r, i);
      return !FUNC4 (i) && !FUNC3 (i);
    }

  return 0;
}