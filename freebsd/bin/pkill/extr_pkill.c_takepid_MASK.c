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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ EWOULDBLOCK ; 
 int LOCK_EX ; 
 int LOCK_NB ; 
 long MAX_PID ; 
 long MIN_PID ; 
 int /*<<< orphan*/  STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char) ; 
 long FUNC9 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC10(const char *pidfile, int pidfilelock)
{
	char *endp, line[BUFSIZ];
	FILE *fh;
	long rval;

	fh = FUNC7(pidfile, "r");
	if (fh == NULL)
		FUNC0(STATUS_ERROR, "Cannot open pidfile `%s'", pidfile);

	if (pidfilelock) {
		/*
		 * If we can lock pidfile, this means that daemon is not
		 * running, so would be better not to kill some random process.
		 */
		if (FUNC6(FUNC5(fh), LOCK_EX | LOCK_NB) == 0) {
			(void)FUNC2(fh);
			FUNC1(STATUS_ERROR, "File '%s' can be locked", pidfile);
		} else {
			if (errno != EWOULDBLOCK) {
				FUNC1(STATUS_ERROR,
				    "Error while locking file '%s'", pidfile);
			}
		}
	}

	if (FUNC4(line, sizeof(line), fh) == NULL) {
		if (FUNC3(fh)) {
			(void)FUNC2(fh);
			FUNC1(STATUS_ERROR, "Pidfile `%s' is empty", pidfile);
		}
		(void)FUNC2(fh);
		FUNC0(STATUS_ERROR, "Cannot read from pid file `%s'", pidfile);
	}
	(void)FUNC2(fh);

	rval = FUNC9(line, &endp, 10);
	if (*endp != '\0' && !FUNC8((unsigned char)*endp))
		FUNC1(STATUS_ERROR, "Invalid pid in file `%s'", pidfile);
	else if (rval < MIN_PID || rval > MAX_PID)
		FUNC1(STATUS_ERROR, "Invalid pid in file `%s'", pidfile);
	return (rval);
}