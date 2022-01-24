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
struct TYPE_4__ {void* dss1_fck; void* dss_ick; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ rfbi ; 

__attribute__((used)) static int FUNC5(void)
{
	rfbi.dss_ick = FUNC2(rfbi.fbdev->dev, "ick");
	if (FUNC0(rfbi.dss_ick)) {
		FUNC4(rfbi.fbdev->dev, "can't get ick\n");
		return FUNC1(rfbi.dss_ick);
	}

	rfbi.dss1_fck = FUNC2(rfbi.fbdev->dev, "dss1_fck");
	if (FUNC0(rfbi.dss1_fck)) {
		FUNC4(rfbi.fbdev->dev, "can't get dss1_fck\n");
		FUNC3(rfbi.dss_ick);
		return FUNC1(rfbi.dss1_fck);
	}

	return 0;
}