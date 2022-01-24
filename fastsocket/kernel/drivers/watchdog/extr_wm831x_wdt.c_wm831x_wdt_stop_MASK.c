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
struct wm831x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM831X_WATCHDOG ; 
 int /*<<< orphan*/  WM831X_WDOG_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct wm831x*) ; 
 int FUNC4 (struct wm831x*) ; 
 int FUNC5 (struct wm831x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct wm831x *wm831x)
{
	int ret;

	FUNC1(&wdt_mutex);

	ret = FUNC4(wm831x);
	if (ret == 0) {
		ret = FUNC5(wm831x, WM831X_WATCHDOG,
				      WM831X_WDOG_ENA, 0);
		FUNC3(wm831x);
	} else {
		FUNC0(wm831x->dev, "Failed to unlock security key: %d\n",
			ret);
	}

	FUNC2(&wdt_mutex);

	return ret;
}