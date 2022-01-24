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
 int /*<<< orphan*/  DATA_AVAIL ; 
 int ENODEV ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(unsigned long port)
{
	int i;

	FUNC2(1, FUNC0(port, RESET));
	FUNC4(10);
	FUNC2(0, FUNC0(port, RESET));
	FUNC4(30);
	for (i = 0; i < 1000 && !(FUNC1(FUNC0(port, DATA_AVAIL)) & 0x80); i++);
	if (FUNC1(FUNC0(port, READ)) != 0xaa) {
		FUNC3("sb_reset: failed at 0x%lx!!!\n", port);
		return -ENODEV;
	}
	return 0;
}