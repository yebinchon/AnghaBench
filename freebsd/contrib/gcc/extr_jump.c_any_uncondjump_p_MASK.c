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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_REF ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  REG_NON_LOCAL_GOTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4 (rtx insn)
{
  rtx x = FUNC3 (insn);
  if (!x)
    return 0;
  if (FUNC0 (FUNC1 (x)) != LABEL_REF)
    return 0;
  if (FUNC2 (insn, REG_NON_LOCAL_GOTO, NULL_RTX))
    return 0;
  return 1;
}