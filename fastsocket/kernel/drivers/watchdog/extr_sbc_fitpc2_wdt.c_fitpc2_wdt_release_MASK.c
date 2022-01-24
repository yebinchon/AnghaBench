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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDT_IN_USE ; 
 int /*<<< orphan*/  WDT_OK_TO_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	if (FUNC3(WDT_OK_TO_CLOSE, &wdt_status)) {
		FUNC4();
		FUNC1("Device disabled\n");
	} else {
		FUNC2("Device closed unexpectedly - timer will not stop\n");
		FUNC5();
	}

	FUNC0(WDT_IN_USE, &wdt_status);
	FUNC0(WDT_OK_TO_CLOSE, &wdt_status);

	return 0;
}