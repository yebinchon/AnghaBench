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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(const char *ctl_path)
{
	int ctl_fd;

	ctl_fd = FUNC1(ctl_path, O_RDONLY);
	if (ctl_fd == -1) {
		FUNC2("Cannot open ctl_fd\n");
		goto error;
	}

	return ctl_fd;

error:
	FUNC0(EXIT_FAILURE);
}