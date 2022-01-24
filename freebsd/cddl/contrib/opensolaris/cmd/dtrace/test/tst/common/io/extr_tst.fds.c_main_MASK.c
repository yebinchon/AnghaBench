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
typedef  int /*<<< orphan*/  fds ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_NDELAY ; 
 int O_NOCTTY ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_SYNC ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  env ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  interrupt ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC10(int argc, char *argv[])
{
	const char *file = "/dev/null";
	int i, n, fds[10];
	struct sigaction act;

	if (argc > 1) {
		(void) FUNC3(stderr, "Usage: %s\n", argv[0]);
		return (EXIT_FAILURE);
	}

	act.sa_handler = interrupt;
	act.sa_flags = 0;

	(void) FUNC8(&act.sa_mask);
	(void) FUNC7(SIGUSR1, &act, NULL);

	FUNC1(0);
	n = 0;

	/*
	 * With all of our file descriptors closed, wait here spinning in bogus
	 * ioctl() calls until DTrace hits us with a SIGUSR1 to start the test.
	 */
	if (FUNC9(env, 1) == 0) {
		for (;;)
			(void) FUNC4(-1, 0, NULL);
	}

	/*
	 * To test the fds[] array, we open /dev/null (a file with reliable
	 * pathname and properties) using various flags and seek offsets.
	 */
	fds[n++] = FUNC6(file, O_RDONLY);
	fds[n++] = FUNC6(file, O_WRONLY);
	fds[n++] = FUNC6(file, O_RDWR);

	fds[n++] = FUNC6(file, O_RDWR | O_APPEND | O_CREAT |
	    O_NOCTTY | O_NONBLOCK | O_NDELAY | O_SYNC | O_TRUNC | 0666);

	fds[n++] = FUNC6(file, O_RDWR);
	(void) FUNC5(fds[n - 1], 123, SEEK_SET);

	/*
	 * Once we have all the file descriptors in the state we want to test,
	 * issue a bogus ioctl() on each fd with cmd 0 and arg NULL to whack
	 * our DTrace script into recording the content of the fds[] array.
	 */
	for (i = 0; i < n; i++)
		(void) FUNC4(fds[i], 0, NULL);

	FUNC0(n <= sizeof (fds) / sizeof (fds[0]));
	FUNC2(0);
}