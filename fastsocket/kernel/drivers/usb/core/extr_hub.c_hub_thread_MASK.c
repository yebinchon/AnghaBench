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

/* Variables and functions */
 int /*<<< orphan*/  hub_event_list ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  khubd_wait ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  usbcore_name ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(void *__unused)
{
	/* khubd needs to be freezable to avoid intefering with USB-PERSIST
	 * port handover.  Otherwise it might see that a full-speed device
	 * was gone before the EHCI controller had handed its port over to
	 * the companion full-speed controller.
	 */
	FUNC4();

	do {
		FUNC0();
		FUNC5(khubd_wait,
				!FUNC2(&hub_event_list) ||
				FUNC1());
	} while (!FUNC1() || !FUNC2(&hub_event_list));

	FUNC3("%s: khubd exiting\n", usbcore_name);
	return 0;
}