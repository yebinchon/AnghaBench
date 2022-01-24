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
 int /*<<< orphan*/  ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC7(char *path)
{
	struct stat sb;
	char *slash;
	int done = 0;

	slash = path;

	while (!done) {
		slash += FUNC5(slash, "/");
		slash += FUNC4(slash, "/");

		done = (*slash == '\0');
		*slash = '\0';

		if (FUNC3(path, &sb)) {
			if (errno != ENOENT || FUNC1(path, 0777)) {
				FUNC2(1, "%s", path);
				return (-1);
			}
		} else if (!FUNC0(sb.st_mode)) {
			FUNC6(1, ENOTDIR, "%s", path);
			return (-1);
		}

		if (!done)
			*slash = '/';
	}

	return (0);
}