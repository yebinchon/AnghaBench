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
 scalar_t__ INSN ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNSPEC ; 
 scalar_t__ UNSPEC_EXECUTE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rtx
FUNC4 (rtx insn)
{
  if (FUNC0 (insn) == INSN
      && FUNC0 (FUNC1 (insn)) == PARALLEL
      && FUNC0 (FUNC3 (FUNC1 (insn), 0, 0)) == UNSPEC
      && FUNC2 (FUNC3 (FUNC1 (insn), 0, 0), 1) == UNSPEC_EXECUTE)
    return FUNC3 (FUNC3 (FUNC1 (insn), 0, 0), 0, 2);

  return NULL_RTX;
}