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
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 

unsigned int FUNC3(void)
{
	static DEFINE_SPINLOCK(serial_lock);
	static unsigned int serial = 0;

	unsigned long flags;
	unsigned int ret;

	FUNC0(&serial_lock, flags);
	do {
		ret = ++serial;
	} while (FUNC2(!ret));
	FUNC1(&serial_lock, flags);

	return ret;
}