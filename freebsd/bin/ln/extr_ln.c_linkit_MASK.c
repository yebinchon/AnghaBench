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
typedef  int /*<<< orphan*/  wbuf ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  bbuf ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  AT_SYMLINK_FOLLOW ; 
 int /*<<< orphan*/  EISDIR ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int EOF ; 
 scalar_t__ Fflag ; 
 int PATH_MAX ; 
 scalar_t__ Pflag ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ fflag ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  hflag ; 
 scalar_t__ iflag ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int linkch ; 
 scalar_t__ FUNC7 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int,char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char const*) ; 
 scalar_t__ sflag ; 
 scalar_t__ FUNC11 (char*,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC12 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC13 (char*,char const*,int) ; 
 scalar_t__ FUNC14 (char const*,struct stat*) ; 
 scalar_t__ FUNC15 (char const*,char const*) ; 
 scalar_t__ FUNC16 (char const*) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,char const*) ; 
 scalar_t__ wflag ; 

__attribute__((used)) static int
FUNC19(const char *source, const char *target, int isdir)
{
	struct stat sb;
	const char *p;
	int ch, exists, first;
	char path[PATH_MAX];
	char wbuf[PATH_MAX];
	char bbuf[PATH_MAX];

	if (!sflag) {
		/* If source doesn't exist, quit now. */
		if ((Pflag ? lstat : stat)(source, &sb)) {
			FUNC17("%s", source);
			return (1);
		}
		/* Only symbolic links to directories. */
		if (FUNC0(sb.st_mode)) {
			errno = EISDIR;
			FUNC17("%s", source);
			return (1);
		}
	}

	/*
	 * If the target is a directory (and not a symlink if hflag),
	 * append the source's name, unless Fflag is set.
	 */
	if (!Fflag && (isdir ||
	    (FUNC7(target, &sb) == 0 && FUNC0(sb.st_mode)) ||
	    (!hflag && FUNC12(target, &sb) == 0 && FUNC0(sb.st_mode)))) {
		if (FUNC13(bbuf, source, sizeof(bbuf)) >= sizeof(bbuf) ||
		    (p = FUNC1(bbuf)) == NULL ||
		    FUNC11(path, sizeof(path), "%s/%s", target, p) >=
		    (ssize_t)sizeof(path)) {
			errno = ENAMETOOLONG;
			FUNC17("%s", source);
			return (1);
		}
		target = path;
	}

	/*
	 * If the link source doesn't exist, and a symbolic link was
	 * requested, and -w was specified, give a warning.
	 */
	if (sflag && wflag) {
		if (*source == '/') {
			/* Absolute link source. */
			if (FUNC12(source, &sb) != 0)
				 FUNC17("warning: %s inaccessible", source);
		} else {
			/*
			 * Relative symlink source.  Try to construct the
			 * absolute path of the source, by appending `source'
			 * to the parent directory of the target.
			 */
			FUNC13(bbuf, target, sizeof(bbuf));
			p = FUNC2(bbuf);
			if (p != NULL) {
				(void)FUNC11(wbuf, sizeof(wbuf), "%s/%s",
						p, source);
				if (FUNC12(wbuf, &sb) != 0)
					FUNC17("warning: %s", source);
			}
		}
	}

	/*
	 * If the file exists, first check it is not the same directory entry.
	 */
	exists = !FUNC7(target, &sb);
	if (exists) {
		if (!sflag && FUNC10(source, target)) {
			FUNC18("%s and %s are the same directory entry",
			    source, target);
			return (1);
		}
	}
	/*
	 * Then unlink it forcibly if -f was specified
	 * and interactively if -i was specified.
	 */
	if (fflag && exists) {
		if (Fflag && FUNC0(sb.st_mode)) {
			if (FUNC9(target)) {
				FUNC17("%s", target);
				return (1);
			}
		} else if (FUNC16(target)) {
			FUNC17("%s", target);
			return (1);
		}
	} else if (iflag && exists) {
		FUNC3(stdout);
		FUNC4(stderr, "replace %s? ", target);

		first = ch = FUNC5();
		while(ch != '\n' && ch != EOF)
			ch = FUNC5();
		if (first != 'y' && first != 'Y') {
			FUNC4(stderr, "not replaced\n");
			return (1);
		}

		if (Fflag && FUNC0(sb.st_mode)) {
			if (FUNC9(target)) {
				FUNC17("%s", target);
				return (1);
			}
		} else if (FUNC16(target)) {
			FUNC17("%s", target);
			return (1);
		}
	}

	/* Attempt the link. */
	if (sflag ? FUNC15(source, target) :
	    FUNC6(AT_FDCWD, source, AT_FDCWD, target,
	    Pflag ? 0 : AT_SYMLINK_FOLLOW)) {
		FUNC17("%s", target);
		return (1);
	}
	if (vflag)
		(void)FUNC8("%s %c> %s\n", target, linkch, source);
	return (0);
}