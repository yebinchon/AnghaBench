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
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*) ; 
 char FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC4(libzfs_handle_t *hdl, const char *buf)
{
	const char *ends = "BKMGTPEZ";
	int i;

	if (buf[0] == '\0')
		return (0);
	for (i = 0; i < FUNC1(ends); i++) {
		if (FUNC2(buf[0]) == ends[i])
			break;
	}
	if (i == FUNC1(ends)) {
		FUNC3(hdl, FUNC0(TEXT_DOMAIN,
		    "invalid numeric suffix '%s'"), buf);
		return (-1);
	}

	/*
	 * We want to allow trailing 'b' characters for 'GB' or 'Mb'.  But don't
	 * allow 'BB' - that's just weird.
	 */
	if (buf[1] == '\0' || (FUNC2(buf[1]) == 'B' && buf[2] == '\0' &&
	    FUNC2(buf[0]) != 'B'))
		return (10*i);

	FUNC3(hdl, FUNC0(TEXT_DOMAIN,
	    "invalid numeric suffix '%s'"), buf);
	return (-1);
}