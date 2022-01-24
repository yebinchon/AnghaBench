#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* wm831x ; 
 scalar_t__ wm831x_wdt_expect_close ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  wm831x_wdt_users ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	if (wm831x_wdt_expect_close)
		FUNC3(wm831x);
	else {
		FUNC1(wm831x->dev, "Watchdog device closed uncleanly\n");
		FUNC2(wm831x);
	}

	FUNC0(0, &wm831x_wdt_users);

	return 0;
}