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
 int ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* errmsg ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 scalar_t__ isbinary ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ newline_added ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sfn ; 
 int /*<<< orphan*/ * sfp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int) ; 

int
FUNC6(void)
{
	int fd;
	int u;

	isbinary = newline_added = 0;
	u = FUNC5(077);
	FUNC4(sfn, "/tmp/ed.XXXXXX");
	if ((fd = FUNC2(sfn)) == -1 ||
	    (sfp = FUNC1(fd, "w+")) == NULL) {
		if (fd != -1)
			FUNC0(fd);
		FUNC3(sfn);
		errmsg = "cannot open temp file";
		FUNC5(u);
		return ERR;
	}
	FUNC5(u);
	return 0;
}