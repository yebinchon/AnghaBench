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
struct wm8350 {int /*<<< orphan*/  dev; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wm8350* FUNC2 () ; 
 scalar_t__ wm8350_wdt_expect_close ; 
 int /*<<< orphan*/  FUNC3 (struct wm8350*) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8350*) ; 
 int /*<<< orphan*/  wm8350_wdt_users ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct wm8350 *wm8350 = FUNC2();

	if (wm8350_wdt_expect_close)
		FUNC4(wm8350);
	else {
		FUNC1(wm8350->dev, "Watchdog device closed uncleanly\n");
		FUNC3(wm8350);
	}

	FUNC0(0, &wm8350_wdt_users);

	return 0;
}