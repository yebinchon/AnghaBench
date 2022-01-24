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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const**,char const**,char*) ; 
 char* FUNC2 () ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 scalar_t__ FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6(char *basename)
{
	char *fullname;
	const char *opt;
	const char *path = FUNC2();
	struct stat statb;

	/* don't try this for absolute or relative paths */
	if( FUNC4(basename, '/'))
		return basename;

	while ((fullname = FUNC1(&path, &opt, basename)) != NULL) {
		if ((FUNC3(fullname, &statb) == 0) && FUNC0(statb.st_mode)) {
			/*
			 * Don't bother freeing here, since it will
			 * be freed by the caller.
			 */
			return fullname;
		}
		FUNC5(fullname);
	}
	return basename;
}