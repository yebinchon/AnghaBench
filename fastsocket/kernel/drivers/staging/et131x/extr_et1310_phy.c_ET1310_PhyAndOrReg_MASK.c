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
typedef  int /*<<< orphan*/  uint16_t ;
struct et131x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct et131x_adapter *etdev,
			uint16_t regnum, uint16_t andMask, uint16_t orMask)
{
	uint16_t reg;

	/* Read the requested register */
	FUNC0(etdev, regnum, &reg);

	/* Apply the AND mask */
	reg &= andMask;

	/* Apply the OR mask */
	reg |= orMask;

	/* Write the value back to the register */
	FUNC1(etdev, regnum, reg);
}