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
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  tracing_events_path ; 

int FUNC6(const char *evname)
{
	char *filename;
	int err = -1, fd;

	if (FUNC0(&filename,
		     "%d/syscalls/%s/id",
		     tracing_events_path, evname) < 0)
		return -1;

	fd = FUNC4(filename, O_RDONLY);
	if (fd >= 0) {
		char id[16];
		if (FUNC5(fd, id, sizeof(id)) > 0)
			err = FUNC1(id);
		FUNC2(fd);
	}

	FUNC3(filename);
	return err;
}