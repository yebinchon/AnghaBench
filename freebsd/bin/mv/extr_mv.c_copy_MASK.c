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

/* Variables and functions */
 scalar_t__ ENOENT ; 
#define  EXEC_FAILED 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  _PATH_CP ; 
 int /*<<< orphan*/  _PATH_RM ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,char const*,char const*,...) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 scalar_t__ vflg ; 
 int FUNC8 () ; 
 int FUNC9 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,char const*,...) ; 

__attribute__((used)) static int
FUNC12(const char *from, const char *to)
{
	struct stat sb;
	int pid, status;

	if (FUNC5(to, &sb) == 0) {
		/* Destination path exists. */
		if (FUNC0(sb.st_mode)) {
			if (FUNC6(to) != 0) {
				FUNC10("rmdir %s", to);
				return (1);
			}
		} else {
			if (FUNC7(to) != 0) {
				FUNC10("unlink %s", to);
				return (1);
			}
		}
	} else if (errno != ENOENT) {
		FUNC10("%s", to);
		return (1);
	}

	/* Copy source to destination. */
	if (!(pid = FUNC8())) {
		FUNC4(_PATH_CP, "mv", vflg ? "-PRpv" : "-PRp", "--", from, to,
		    (char *)NULL);
		FUNC3(EXEC_FAILED);
	}
	if (FUNC9(pid, &status, 0) == -1) {
		FUNC10("%s %s %s: waitpid", _PATH_CP, from, to);
		return (1);
	}
	if (!FUNC2(status)) {
		FUNC11("%s %s %s: did not terminate normally",
		    _PATH_CP, from, to);
		return (1);
	}
	switch (FUNC1(status)) {
	case 0:
		break;
	case EXEC_FAILED:
		FUNC11("%s %s %s: exec failed", _PATH_CP, from, to);
		return (1);
	default:
		FUNC11("%s %s %s: terminated with %d (non-zero) status",
		    _PATH_CP, from, to, FUNC1(status));
		return (1);
	}

	/* Delete the source. */
	if (!(pid = FUNC8())) {
		FUNC4(_PATH_RM, "mv", "-rf", "--", from, (char *)NULL);
		FUNC3(EXEC_FAILED);
	}
	if (FUNC9(pid, &status, 0) == -1) {
		FUNC10("%s %s: waitpid", _PATH_RM, from);
		return (1);
	}
	if (!FUNC2(status)) {
		FUNC11("%s %s: did not terminate normally", _PATH_RM, from);
		return (1);
	}
	switch (FUNC1(status)) {
	case 0:
		break;
	case EXEC_FAILED:
		FUNC11("%s %s: exec failed", _PATH_RM, from);
		return (1);
	default:
		FUNC11("%s %s: terminated with %d (non-zero) status",
		    _PATH_RM, from, FUNC1(status));
		return (1);
	}
	return (0);
}