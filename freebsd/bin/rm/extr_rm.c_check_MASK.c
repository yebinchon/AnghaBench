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
struct stat {int st_flags; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int EOF ; 
 int SF_APPEND ; 
 int SF_IMMUTABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int UF_APPEND ; 
 int UF_IMMUTABLE ; 
 int /*<<< orphan*/  W_OK ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 () ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin_ok ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uid ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(const char *path, const char *name, struct stat *sp)
{
	int ch, first;
	char modep[15], *flagsp;

	/* Check -i first. */
	if (iflag)
		(void)FUNC5(stderr, "remove %s? ", path);
	else {
		/*
		 * If it's not a symbolic link and it's unwritable and we're
		 * talking to a terminal, ask.  Symbolic links are excluded
		 * because their permissions are meaningless.  Check stdin_ok
		 * first because we may not have stat'ed the file.
		 */
		if (!stdin_ok || FUNC0(sp->st_mode) ||
		    (!FUNC1(name, W_OK) &&
		    !(sp->st_flags & (SF_APPEND|SF_IMMUTABLE)) &&
		    (!(sp->st_flags & (UF_APPEND|UF_IMMUTABLE)) || !uid)))
			return (1);
		FUNC9(sp->st_mode, modep);
		if ((flagsp = FUNC3(sp->st_flags)) == NULL)
			FUNC2(1, "fflagstostr");
		(void)FUNC5(stderr, "override %s%s%s/%s %s%sfor %s? ",
		    modep + 1, modep[10] == ' ' ? "" : " ",
		    FUNC10(sp->st_uid, 0),
		    FUNC8(sp->st_gid, 0),
		    *flagsp ? flagsp : "", *flagsp ? " " : "",
		    path);
		FUNC6(flagsp);
	}
	(void)FUNC4(stderr);

	first = ch = FUNC7();
	while (ch != '\n' && ch != EOF)
		ch = FUNC7();
	return (first == 'y' || first == 'Y');
}