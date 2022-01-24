#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int MCE_bit; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ ad1848_info ;

/* Variables and functions */
 unsigned char FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(ad1848_info * devc)
{
	unsigned char prev, acal;
	int timeout = 1000;

	while (timeout > 0 && FUNC1(devc->base) == 0x80)	/*Are we initializing */
		timeout--;

	acal = FUNC0(devc, 9);

	devc->MCE_bit = 0x00;
	prev = FUNC1(FUNC2(devc));
	FUNC3((0x00), FUNC2(devc));	/* Clear the MCE bit */

	if ((prev & 0x40) == 0)	/* Not in MCE mode */
	{
		return;
	}
	FUNC3((0x00), FUNC2(devc));	/* Clear the MCE bit */
	if (acal & 0x08)	/* Auto calibration is enabled */
		FUNC4(devc);
}