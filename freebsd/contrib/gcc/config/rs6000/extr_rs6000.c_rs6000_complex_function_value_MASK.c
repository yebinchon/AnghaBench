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
 scalar_t__ FUNC0 (int) ; 
 unsigned int FP_ARG_RETURN ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int GP_ARG_RETURN ; 
 scalar_t__ TARGET_32BIT ; 
 scalar_t__ TARGET_FPRS ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned int) ; 

__attribute__((used)) static rtx
FUNC8 (enum machine_mode mode)
{
  unsigned int regno;
  rtx r1, r2;
  enum machine_mode inner = FUNC2 (mode);
  unsigned int inner_bytes = FUNC3 (inner);

  if (FUNC0 (mode) && TARGET_HARD_FLOAT && TARGET_FPRS)
    regno = FP_ARG_RETURN;
  else
    {
      regno = GP_ARG_RETURN;

      /* 32-bit is OK since it'll go in r3/r4.  */
      if (TARGET_32BIT && inner_bytes >= 4)
	return FUNC7 (mode, regno);
    }

  if (inner_bytes >= 8)
    return FUNC7 (mode, regno);

  r1 = FUNC5 (inner, FUNC7 (inner, regno),
			  const0_rtx);
  r2 = FUNC5 (inner, FUNC7 (inner, regno + 1),
			  FUNC1 (inner_bytes));
  return FUNC6 (mode, FUNC4 (2, r1, r2));
}