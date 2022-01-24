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
struct file {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 size_t EFAULT ; 
 int /*<<< orphan*/  WDT_OK_TO_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char,char const*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static ssize_t FUNC4(struct file *file, const char *data,
						size_t len, loff_t *ppos)
{
	if (len) {
		if (!nowayout) {
			size_t i;

			FUNC0(WDT_OK_TO_CLOSE, &wdt_status);

			for (i = 0; i != len; i++) {
				char c;

				if (FUNC1(c, data + i))
					return -EFAULT;
				if (c == 'V')
					FUNC2(WDT_OK_TO_CLOSE, &wdt_status);
			}
		}
		FUNC3();
	}

	return len;
}