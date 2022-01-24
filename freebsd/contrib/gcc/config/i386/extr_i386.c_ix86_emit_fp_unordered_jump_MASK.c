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
 int /*<<< orphan*/  CCNOmode ; 
 int /*<<< orphan*/  CCmode ; 
 int /*<<< orphan*/  FLAGS_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HImode ; 
 scalar_t__ TARGET_USE_SAHF ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pc_rtx ; 

void
FUNC13 (rtx label)
{
  rtx reg = FUNC3 (HImode);
  rtx temp;

  FUNC1 (FUNC11 (reg));

  if (TARGET_USE_SAHF)
    {
      FUNC1 (FUNC12 (reg));

      temp = FUNC7 (CCmode, FLAGS_REG);
      temp = FUNC9 (VOIDmode, temp, const0_rtx);
    }
  else
    {
      FUNC1 (FUNC10 (reg, FUNC0 (0x04)));

      temp = FUNC7 (CCNOmode, FLAGS_REG);
      temp = FUNC6 (VOIDmode, temp, const0_rtx);
    }

  temp = FUNC4 (VOIDmode, temp,
			      FUNC5 (VOIDmode, label),
			      pc_rtx);
  temp = FUNC8 (VOIDmode, pc_rtx, temp);
  FUNC2 (temp);
}