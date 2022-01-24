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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int expect_close ; 
 scalar_t__ FUNC1 (char,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_lock ; 

__attribute__((used)) static ssize_t FUNC4(struct file *file, const char *data,
			     size_t len, loff_t *ppos)
{
	/* check for a magic close character */
	if (len) {
		size_t i;

		FUNC2(&wdt_lock);
		FUNC0(1);
		FUNC3(&wdt_lock);

		expect_close = 0;
		for (i = 0; i < len; ++i) {
			char c;
			if (FUNC1(c, data + i))
				return -EFAULT;
			if (c == 'V')
				expect_close = 1;
		}

	}
	return len;
}