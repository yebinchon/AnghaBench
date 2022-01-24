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
typedef  enum reg_note { ____Placeholder_reg_note } reg_note ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (rtx insn, rtx *listp, int uncond,
			      enum reg_note dep_type)
{
  rtx list, next;
  for (list = *listp, *listp = NULL; list ; list = next)
    {
      next = FUNC0 (list, 1);
      if (uncond || ! FUNC3 (insn, FUNC0 (list, 0)))
	FUNC1 (insn, FUNC0 (list, 0), dep_type);
      FUNC2 (list);
    }
}