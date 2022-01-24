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
struct wm8350 {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 struct wm8350* FUNC0 () ; 
 int FUNC1 (struct inode*,struct file*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wm8350*) ; 
 int /*<<< orphan*/  wm8350_wdt_users ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct wm8350 *wm8350 = FUNC0();
	int ret;

	if (!wm8350)
		return -ENODEV;

	if (FUNC2(0, &wm8350_wdt_users))
		return -EBUSY;

	ret = FUNC3(wm8350);
	if (ret != 0)
		return ret;

	return FUNC1(inode, file);
}