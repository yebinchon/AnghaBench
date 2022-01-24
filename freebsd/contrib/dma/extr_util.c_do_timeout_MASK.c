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
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigalrm_handler ; 
 int /*<<< orphan*/  sigbuf ; 
 int sigbuf_valid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int
FUNC5(int timeout, int dojmp)
{
	struct sigaction act;
	int ret = 0;

	FUNC2(&act.sa_mask);
	act.sa_flags = 0;

	if (timeout) {
		act.sa_handler = sigalrm_handler;
		if (FUNC1(SIGALRM, &act, NULL) != 0)
			FUNC4(LOG_WARNING, "can not set signal handler: %m");
		if (dojmp) {
			ret = FUNC3(sigbuf, 1);
			if (ret)
				goto disable;
			/* else just programmed */
			sigbuf_valid = 1;
		}

		FUNC0(timeout);
	} else {
disable:
		FUNC0(0);

		act.sa_handler = SIG_IGN;
		if (FUNC1(SIGALRM, &act, NULL) != 0)
			FUNC4(LOG_WARNING, "can not remove signal handler: %m");
		sigbuf_valid = 0;
	}

	return (ret);
}