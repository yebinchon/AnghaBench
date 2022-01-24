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
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC1 (char const*) ; 
 char FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(const char *buf)
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
		(void) FUNC0(stderr, "ztest: invalid bytes suffix: %s\n",
		    buf);
		FUNC3(B_FALSE);
	}
	if (buf[1] == '\0' || (FUNC2(buf[1]) == 'B' && buf[2] == '\0')) {
		return (10*i);
	}
	(void) FUNC0(stderr, "ztest: invalid bytes suffix: %s\n", buf);
	FUNC3(B_FALSE);
	/* NOTREACHED */
}