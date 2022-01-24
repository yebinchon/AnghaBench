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
struct str_node {char* s; } ;

/* Variables and functions */
 int ENOTSUP ; 
 int FUNC0 (char*,int,char*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int fd, struct str_node *ent)
{
	char *p;
	char buf[128];
	int ret;

	/* Convert from perf-probe event to trace-probe event */
	ret = FUNC0(buf, 128, "-:%s", ent->s);
	if (ret < 0)
		goto error;

	p = FUNC4(buf + 2, ':');
	if (!p) {
		FUNC1("Internal error: %s should have ':' but not.\n",
			 ent->s);
		ret = -ENOTSUP;
		goto error;
	}
	*p = '/';

	FUNC1("Writing event: %s\n", buf);
	ret = FUNC7(fd, buf, FUNC6(buf));
	if (ret < 0) {
		ret = -errno;
		goto error;
	}

	FUNC3("Removed event: %s\n", ent->s);
	return 0;
error:
	FUNC2("Failed to delete event: %s\n", FUNC5(-ret));
	return ret;
}