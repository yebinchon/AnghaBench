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
typedef  int /*<<< orphan*/  zfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int ZFS_DIFF_CLASSIFY ; 
 int ZFS_DIFF_PARSEABLE ; 
 int ZFS_DIFF_TIMESTAMP ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC2 (int,char**,char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static int
FUNC11(int argc, char **argv)
{
	zfs_handle_t *zhp;
	int flags = 0;
	char *tosnap = NULL;
	char *fromsnap = NULL;
	char *atp, *copy;
	int err = 0;
	int c;

	while ((c = FUNC2(argc, argv, "FHt")) != -1) {
		switch (c) {
		case 'F':
			flags |= ZFS_DIFF_CLASSIFY;
			break;
		case 'H':
			flags |= ZFS_DIFF_PARSEABLE;
			break;
		case 't':
			flags |= ZFS_DIFF_TIMESTAMP;
			break;
		default:
			(void) FUNC0(stderr,
			    FUNC3("invalid option '%c'\n"), optopt);
			FUNC7(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	if (argc < 1) {
		(void) FUNC0(stderr,
		    "%s", FUNC3("must provide at least one snapshot name\n"));
		FUNC7(B_FALSE);
	}

	if (argc > 2) {
		(void) FUNC0(stderr, "%s", FUNC3("too many arguments\n"));
		FUNC7(B_FALSE);
	}

	fromsnap = argv[0];
	tosnap = (argc == 2) ? argv[1] : NULL;

	copy = NULL;
	if (*fromsnap != '@')
		copy = FUNC6(fromsnap);
	else if (tosnap)
		copy = FUNC6(tosnap);
	if (copy == NULL)
		FUNC7(B_FALSE);

	if ((atp = FUNC5(copy, '@')) != NULL)
		*atp = '\0';

	if ((zhp = FUNC9(g_zfs, copy, ZFS_TYPE_FILESYSTEM)) == NULL)
		return (1);

	FUNC1(copy);

	/*
	 * Ignore SIGPIPE so that the library can give us
	 * information on any failure
	 */
	(void) FUNC4(SIGPIPE);

	err = FUNC10(zhp, STDOUT_FILENO, fromsnap, tosnap, flags);

	FUNC8(zhp);

	return (err != 0);
}