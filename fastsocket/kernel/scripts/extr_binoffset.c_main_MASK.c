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
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  filesize ; 
 int firstloc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char**) ; 
 int inputfd ; 
 char* inputname ; 
 scalar_t__ madr ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int num_matches ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11 (int argc, char *argv [])
{
	progname = argv[0];

	if (argc < 3)
		FUNC10 ();

	FUNC4 (argc - 2, argv + 2);

	inputname = argv[1];

	inputfd = FUNC7 (inputname, O_RDONLY);
	if (inputfd == -1) {
		FUNC2 (stderr, "%s: cannot open '%s'\n",
				progname, inputname);
		FUNC1 (3);
	}

	filesize = FUNC3 (inputfd);

	madr = FUNC5 (0, filesize, PROT_READ, MAP_PRIVATE, inputfd, 0);
	if (madr == MAP_FAILED) {
		FUNC2 (stderr, "mmap error = %d\n", errno);
		FUNC0 (inputfd);
		FUNC1 (4);
	}

	FUNC9 ();

	if (FUNC6 (madr, filesize))
		FUNC2 (stderr, "munmap error = %d\n", errno);

	if (FUNC0 (inputfd))
		FUNC2 (stderr, "%s: error %d closing '%s'\n",
				progname, errno, inputname);

	FUNC2 (stderr, "number of pattern matches = %d\n", num_matches);
	if (num_matches == 0)
		firstloc = ~0;
	FUNC8 ("%ld\n", firstloc);
	FUNC2 (stderr, "%d\n", firstloc);

	FUNC1 (num_matches ? 0 : 2);
}