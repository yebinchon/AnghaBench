#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLIZZARD_NDISP_CTRL_STATUS ; 
 TYPE_2__ blizzard ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned long tmo = jiffies + FUNC2(30);

	while (FUNC0(BLIZZARD_NDISP_CTRL_STATUS) & (1 << 7)) {
		if (FUNC4(jiffies, tmo)) {
			if (FUNC3())
				FUNC1(blizzard.fbdev->dev,
					"s1d1374x: line buffer not ready\n");
			break;
		}
	}
}