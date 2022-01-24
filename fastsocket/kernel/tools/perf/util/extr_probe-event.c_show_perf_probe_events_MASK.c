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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(void)
{
	int fd, ret;

	FUNC5();
	fd = FUNC3(false);

	if (fd < 0)
		return fd;

	ret = FUNC2();
	if (ret < 0)
		return ret;

	ret = FUNC0(fd, true);
	FUNC1(fd);

	fd = FUNC4(false);
	if (fd >= 0) {
		ret = FUNC0(fd, false);
		FUNC1(fd);
	}

	return ret;
}