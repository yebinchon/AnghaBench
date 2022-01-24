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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int fflg ; 
 int FUNC5 (int,char**,char*) ; 
 int hflg ; 
 int iflg ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 void* nflg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 size_t FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int vflg ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

int
FUNC13(int argc, char *argv[])
{
	size_t baselen, len;
	int rval;
	char *p, *endp;
	struct stat sb;
	int ch;
	char path[PATH_MAX];

	while ((ch = FUNC5(argc, argv, "fhinv")) != -1)
		switch (ch) {
		case 'h':
			hflg = 1;
			break;
		case 'i':
			iflg = 1;
			fflg = nflg = 0;
			break;
		case 'f':
			fflg = 1;
			iflg = nflg = 0;
			break;
		case 'n':
			nflg = 1;
			fflg = iflg = 0;
			break;
		case 'v':
			vflg = 1;
			break;
		default:
			FUNC11();
		}
	argc -= optind;
	argv += optind;

	if (argc < 2)
		FUNC11();

	/*
	 * If the stat on the target fails or the target isn't a directory,
	 * try the move.  More than 2 arguments is an error in this case.
	 */
	if (FUNC8(argv[argc - 1], &sb) || !FUNC0(sb.st_mode)) {
		if (argc > 2)
			FUNC3(1, "%s is not a directory", argv[argc - 1]);
		FUNC4(FUNC2(argv[0], argv[1]));
	}

	/*
	 * If -h was specified, treat the target as a symlink instead of
	 * directory.
	 */
	if (hflg) {
		if (argc > 2)
			FUNC11();
		if (FUNC6(argv[1], &sb) == 0 && FUNC1(sb.st_mode))
			FUNC4(FUNC2(argv[0], argv[1]));
	}

	/* It's a directory, move each file into it. */
	if (FUNC10(argv[argc - 1]) > sizeof(path) - 1)
		FUNC3(1, "%s: destination pathname too long", *argv);
	(void)FUNC9(path, argv[argc - 1]);
	baselen = FUNC10(path);
	endp = &path[baselen];
	if (!baselen || *(endp - 1) != '/') {
		*endp++ = '/';
		++baselen;
	}
	for (rval = 0; --argc; ++argv) {
		/*
		 * Find the last component of the source pathname.  It
		 * may have trailing slashes.
		 */
		p = *argv + FUNC10(*argv);
		while (p != *argv && p[-1] == '/')
			--p;
		while (p != *argv && p[-1] != '/')
			--p;

		if ((baselen + (len = FUNC10(p))) >= PATH_MAX) {
			FUNC12("%s: destination pathname too long", *argv);
			rval = 1;
		} else {
			FUNC7(endp, p, (size_t)len + 1);
			if (FUNC2(*argv, path))
				rval = 1;
		}
	}
	FUNC4(rval);
}