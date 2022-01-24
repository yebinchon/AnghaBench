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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sub_optab ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xor_optab ; 

__attribute__((used)) static rtx
FUNC3 (rtx cmp0, rtx cmp1)
{
  if (cmp1 == const0_rtx)
    return cmp0;

  if (FUNC2 (cmp1, VOIDmode))
    return FUNC1 (FUNC0 (cmp0), xor_optab,
			 cmp0, cmp1, 0, 0, OPTAB_DIRECT);

  return FUNC1 (FUNC0 (cmp0), sub_optab,
		       cmp0, cmp1, 0, 0, OPTAB_DIRECT);
}