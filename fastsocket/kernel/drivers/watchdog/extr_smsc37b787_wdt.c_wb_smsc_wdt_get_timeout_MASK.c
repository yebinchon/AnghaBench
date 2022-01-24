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
 int /*<<< orphan*/  IODEV_NO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  io_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned char FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned char FUNC6(void)
{
	unsigned char set_timeout;

	FUNC4(&io_lock);
	FUNC1();
	FUNC3(IODEV_NO);
	set_timeout = FUNC2(0xF2);
	FUNC0();
	FUNC5(&io_lock);

	return set_timeout;
}