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
 int BLKmode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 

__attribute__((used)) static rtx
FUNC4 (enum machine_mode mode, enum machine_mode orig_mode,
		     unsigned int regno)
{
  rtx tmp;

  if (orig_mode != BLKmode)
    tmp = FUNC3 (orig_mode, regno);
  else
    {
      tmp = FUNC3 (mode, regno);
      tmp = FUNC1 (VOIDmode, tmp, const0_rtx);
      tmp = FUNC2 (orig_mode, FUNC0 (1, tmp));
    }

  return tmp;
}