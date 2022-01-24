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
struct stat {int st_mode; int st_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 scalar_t__ ENOENT ; 
 int SF_APPEND ; 
 int SF_IMMUTABLE ; 
 int S_IFWHT ; 
 int S_IRUSR ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int S_IWUSR ; 
 int UF_APPEND ; 
 int UF_IMMUTABLE ; 
 scalar_t__ Wflag ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,struct stat*) ; 
 int /*<<< orphan*/  dflag ; 
 scalar_t__ errno ; 
 int eval ; 
 int /*<<< orphan*/  fflag ; 
 scalar_t__ info ; 
 int FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uid ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC12(char **argv)
{
	struct stat sb;
	int rval;
	char *f;

	/*
	 * Remove a file.  POSIX 1003.2 states that, by default, attempting
	 * to remove a directory is an error, so must always stat the file.
	 */
	while ((f = *argv++) != NULL) {
		/* Assume if can't stat the file, can't unlink it. */
		if (FUNC4(f, &sb)) {
			if (Wflag) {
				sb.st_mode = S_IFWHT|S_IWUSR|S_IRUSR;
			} else {
				if (!fflag || errno != ENOENT) {
					FUNC10("%s", f);
					eval = 1;
				}
				continue;
			}
		} else if (Wflag) {
			FUNC11("%s: %s", f, FUNC7(EEXIST));
			eval = 1;
			continue;
		}

		if (FUNC0(sb.st_mode) && !dflag) {
			FUNC11("%s: is a directory", f);
			eval = 1;
			continue;
		}
		if (!fflag && !FUNC1(sb.st_mode) && !FUNC2(f, f, &sb))
			continue;
		rval = 0;
		if (!uid && !FUNC1(sb.st_mode) &&
		    (sb.st_flags & (UF_APPEND|UF_IMMUTABLE)) &&
		    !(sb.st_flags & (SF_APPEND|SF_IMMUTABLE)))
			rval = FUNC3(f, sb.st_flags & ~(UF_APPEND|UF_IMMUTABLE));
		if (rval == 0) {
			if (FUNC1(sb.st_mode))
				rval = FUNC8(f);
			else if (FUNC0(sb.st_mode))
				rval = FUNC6(f);
			else
				rval = FUNC9(f);
		}
		if (rval && (!fflag || errno != ENOENT)) {
			FUNC10("%s", f);
			eval = 1;
		}
		if (vflag && rval == 0)
			(void)FUNC5("%s\n", f);
		if (info && rval == 0) {
			info = 0;
			(void)FUNC5("%s\n", f);
		}
	}
}