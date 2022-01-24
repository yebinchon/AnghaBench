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
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ SA_RESTART ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  onhup ; 
 int /*<<< orphan*/  onterm ; 
 int /*<<< orphan*/  onusr1 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct sigaction sa;

	sa.sa_handler = onusr1;
	sa.sa_flags = SA_RESTART;
	FUNC2(&sa.sa_mask);
	if (FUNC1(SIGUSR1, &sa, NULL)) {
		FUNC3(LOG_ERR, "sigaction: %m");
		FUNC0(1);
	}

	sa.sa_handler = onhup;
	if (FUNC1(SIGHUP, &sa, NULL)) {
		FUNC3(LOG_ERR, "sigaction: %m");
		FUNC0(1);
	}

	sa.sa_handler = onterm;
	sa.sa_flags = 0;
	FUNC2(&sa.sa_mask);
	if (FUNC1(SIGTERM, &sa, NULL)) {
		FUNC3(LOG_ERR, "sigaction: %m");
		FUNC0(1);
	}
	if (FUNC1(SIGINT, &sa, NULL)) {
		FUNC3(LOG_ERR, "sigaction: %m");
		FUNC0(1);
	}
}