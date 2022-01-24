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
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ ITANIUM_CLASS_IGNORE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ USE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static rtx
FUNC5 (rtx insn, rtx tail)
{
  for (; insn && insn != tail; insn = FUNC2 (insn))
    if (FUNC1 (insn)
	&& FUNC4 (insn) != ITANIUM_CLASS_IGNORE
	&& FUNC0 (FUNC3 (insn)) != USE
	&& FUNC0 (FUNC3 (insn)) != CLOBBER)
      return insn;
  return NULL_RTX;
}