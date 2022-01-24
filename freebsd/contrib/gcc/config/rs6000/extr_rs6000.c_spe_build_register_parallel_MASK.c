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
#define  DCmode 129 
#define  DFmode 128 
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rtx
FUNC6 (enum machine_mode mode, int gregno)
{
  rtx r1, r3;

  switch (mode)
    {
    case DFmode:
      r1 = FUNC5 (DImode, gregno);
      r1 = FUNC3 (VOIDmode, r1, const0_rtx);
      return FUNC4 (mode, FUNC2 (1, r1));

    case DCmode:
      r1 = FUNC5 (DImode, gregno);
      r1 = FUNC3 (VOIDmode, r1, const0_rtx);
      r3 = FUNC5 (DImode, gregno + 2);
      r3 = FUNC3 (VOIDmode, r3, FUNC0 (8));
      return FUNC4 (mode, FUNC2 (2, r1, r3));

    default:
      FUNC1 ();
    }
}