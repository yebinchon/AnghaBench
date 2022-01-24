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
typedef  int uint16_t ;
struct et131x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PHY_CONTROL ; 

void FUNC2(struct et131x_adapter *etdev, bool down)
{
	uint16_t data;

	FUNC0(etdev, PHY_CONTROL, &data);

	if (down == false) {
		/* Power UP */
		data &= ~0x0800;
		FUNC1(etdev, PHY_CONTROL, data);
	} else {
		/* Power DOWN */
		data |= 0x0800;
		FUNC1(etdev, PHY_CONTROL, data);
	}
}