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
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int FP_INC ; 
 scalar_t__ FP_RETURN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_NEWABI ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC5 (enum machine_mode mode,
		      enum machine_mode mode1, HOST_WIDE_INT offset1,
		      enum machine_mode mode2, HOST_WIDE_INT offset2)
{
  int inc;

  inc = (TARGET_NEWABI ? 2 : FP_INC);
  return FUNC3
    (mode,
     FUNC1 (2,
		FUNC2 (VOIDmode,
				   FUNC4 (mode1, FP_RETURN),
				   FUNC0 (offset1)),
		FUNC2 (VOIDmode,
				   FUNC4 (mode2, FP_RETURN + inc),
				   FUNC0 (offset2))));

}