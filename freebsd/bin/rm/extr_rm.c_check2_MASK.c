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
 int EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 scalar_t__ rflag ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC5(char **argv)
{
	struct stat st;
	int first;
	int ch;
	int fcount = 0;
	int dcount = 0;
	int i;
	const char *dname = NULL;

	for (i = 0; argv[i]; ++i) {
		if (FUNC4(argv[i], &st) == 0) {
			if (FUNC0(st.st_mode)) {
				++dcount;
				dname = argv[i];    /* only used if 1 dir */
			} else {
				++fcount;
			}
		}
	}
	first = 0;
	while (first != 'n' && first != 'N' && first != 'y' && first != 'Y') {
		if (dcount && rflag) {
			FUNC2(stderr, "recursively remove");
			if (dcount == 1)
				FUNC2(stderr, " %s", dname);
			else
				FUNC2(stderr, " %d dirs", dcount);
			if (fcount == 1)
				FUNC2(stderr, " and 1 file");
			else if (fcount > 1)
				FUNC2(stderr, " and %d files", fcount);
		} else if (dcount + fcount > 3) {
			FUNC2(stderr, "remove %d files", dcount + fcount);
		} else {
			return(1);
		}
		FUNC2(stderr, "? ");
		FUNC1(stderr);

		first = ch = FUNC3();
		while (ch != '\n' && ch != EOF)
			ch = FUNC3();
		if (ch == EOF)
			break;
	}
	return (first == 'y' || first == 'Y');
}