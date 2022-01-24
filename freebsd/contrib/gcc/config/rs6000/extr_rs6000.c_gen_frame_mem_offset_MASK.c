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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int DFmode ; 
 int /*<<< orphan*/  FIXED_SCRATCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ TARGET_E500_DOUBLE ; 
 scalar_t__ TARGET_SPE_ABI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC6 (enum machine_mode mode, rtx reg, int offset)
{
  rtx int_rtx, offset_rtx;

  int_rtx = FUNC0 (offset);

  if ((TARGET_SPE_ABI && FUNC1 (mode))
      || (TARGET_E500_DOUBLE && mode == DFmode))
    {
      offset_rtx = FUNC5 (Pmode, FIXED_SCRATCH);
      FUNC2 (offset_rtx, int_rtx);
    }
  else
    offset_rtx = int_rtx;

  return FUNC3 (mode, FUNC4 (Pmode, reg, offset_rtx));
}