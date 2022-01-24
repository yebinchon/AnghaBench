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
 int /*<<< orphan*/  F_DUPFD_CLOEXEC ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  _PATH_TTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  iflag ; 
 int initialpgrp ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int jobctl ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int rootpid ; 
 scalar_t__ rootshell ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int ttyfd ; 

void
FUNC11(int on)
{
	int i;

	if (on == jobctl || rootshell == 0)
		return;
	if (on) {
		if (ttyfd != -1)
			FUNC0(ttyfd);
		if ((ttyfd = FUNC6(_PATH_TTY, O_RDWR | O_CLOEXEC)) < 0) {
			i = 0;
			while (i <= 2 && !FUNC3(i))
				i++;
			if (i > 2 ||
			    (ttyfd = FUNC1(i, F_DUPFD_CLOEXEC, 10)) < 0) {
				FUNC4();
				return;
			}
		}
		if (ttyfd < 10) {
			/*
			 * Keep our TTY file descriptor out of the way of
			 * the user's redirections.
			 */
			if ((i = FUNC1(ttyfd, F_DUPFD_CLOEXEC, 10)) < 0) {
				FUNC4();
				return;
			}
			FUNC0(ttyfd);
			ttyfd = i;
		}
		do { /* while we are in the background */
			initialpgrp = FUNC9(ttyfd);
			if (initialpgrp < 0) {
				FUNC4();
				return;
			}
			if (initialpgrp != FUNC2()) {
				if (!iflag) {
					initialpgrp = -1;
					FUNC4();
					return;
				}
				FUNC5(0, SIGTTIN);
				continue;
			}
		} while (0);
		FUNC8(SIGTSTP);
		FUNC8(SIGTTOU);
		FUNC8(SIGTTIN);
		FUNC7(0, rootpid);
		FUNC10(ttyfd, rootpid);
	} else { /* turning job control off */
		FUNC7(0, initialpgrp);
		if (ttyfd >= 0) {
			FUNC10(ttyfd, initialpgrp);
			FUNC0(ttyfd);
			ttyfd = -1;
		}
		FUNC8(SIGTSTP);
		FUNC8(SIGTTOU);
		FUNC8(SIGTTIN);
	}
	jobctl = on;
}