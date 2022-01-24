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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  com_win ; 
 int /*<<< orphan*/  create_file_fail_msg ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  recv_file ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 char* tmp_file ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ) ; 

void 
FUNC12()
{
	char template[128], *name;
	char string[256];
	int fd;

	if (FUNC4())
	{
		return;
	}
	(void)FUNC6(template, "/tmp/ee.XXXXXXXX");
	fd = FUNC3(template);
	if (fd < 0) {
		FUNC8(com_win, 0, 0);
		FUNC9(com_win, create_file_fail_msg, name);
		FUNC10(com_win);
		return;
	}
	FUNC1(fd);
	if (FUNC11(name, 0))
	{
		FUNC6(string, "ispell %s", name);
		FUNC5(string);
		FUNC2();
		tmp_file = name;
		recv_file = TRUE;
		FUNC0();
		FUNC7(name);
	}
}