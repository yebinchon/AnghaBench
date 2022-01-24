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
struct sigaction {scalar_t__ sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINFO ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 scalar_t__ SIG_IGN ; 
 scalar_t__ intr ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ siginfo ; 

__attribute__((used)) static void
FUNC2(void)
{
	struct sigaction act, oact;

	(void) FUNC1(&act.sa_mask);
	act.sa_flags = 0;
	act.sa_handler = intr;

	if (FUNC0(SIGINT, NULL, &oact) == 0 && oact.sa_handler != SIG_IGN)
		(void) FUNC0(SIGINT, &act, NULL);

	if (FUNC0(SIGTERM, NULL, &oact) == 0 && oact.sa_handler != SIG_IGN)
		(void) FUNC0(SIGTERM, &act, NULL);

#ifdef __FreeBSD__
	if (sigaction(SIGPIPE, NULL, &oact) == 0 && oact.sa_handler != SIG_IGN)
		(void) sigaction(SIGPIPE, &act, NULL);

	if (sigaction(SIGUSR1, NULL, &oact) == 0 && oact.sa_handler != SIG_IGN)
		(void) sigaction(SIGUSR1, &act, NULL);

	act.sa_handler = siginfo;
	if (sigaction(SIGINFO, NULL, &oact) == 0 && oact.sa_handler != SIG_IGN)
		(void) sigaction(SIGINFO, &act, NULL);
#endif
}