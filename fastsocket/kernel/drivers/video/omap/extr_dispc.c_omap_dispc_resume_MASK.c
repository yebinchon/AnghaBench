#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ update_mode; int /*<<< orphan*/  ext_mode; } ;

/* Variables and functions */
 scalar_t__ OMAPFB_AUTO_UPDATE ; 
 TYPE_1__ dispc ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	if (dispc.update_mode == OMAPFB_AUTO_UPDATE) {
		FUNC0(1);
		if (!dispc.ext_mode) {
			FUNC3();
			FUNC1();
		}
		FUNC2(1);
	}
}