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
typedef  int mode_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ EISDIR ; 
 scalar_t__ ENOTDIR ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int S_IWUSR ; 
 int S_IXUSR ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 int FUNC4 (int) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(char *path, mode_t omode)
{
	struct stat sb;
	mode_t numask, oumask;
	int first, last, retval;
	char *p;

	p = path;
	oumask = 0;
	retval = 1;
	if (p[0] == '/')		/* Skip leading '/'. */
		++p;
	for (first = 1, last = 0; !last ; ++p) {
		if (p[0] == '\0')
			last = 1;
		else if (p[0] != '/')
			continue;
		*p = '\0';
		if (!last && p[1] == '\0')
			last = 1;
		if (first) {
			/*
			 * POSIX 1003.2:
			 * For each dir operand that does not name an existing
			 * directory, effects equivalent to those caused by the
			 * following command shall occcur:
			 *
			 * mkdir -p -m $(umask -S),u+wx $(dirname dir) &&
			 *    mkdir [-m mode] dir
			 *
			 * We change the user's umask and then restore it,
			 * instead of doing chmod's.
			 */
			oumask = FUNC4(0);
			numask = oumask & ~(S_IWUSR | S_IXUSR);
			(void)FUNC4(numask);
			first = 0;
		}
		if (last)
			(void)FUNC4(oumask);
		if (FUNC1(path, last ? omode : S_IRWXU | S_IRWXG | S_IRWXO) < 0) {
			if (errno == EEXIST || errno == EISDIR) {
				if (FUNC3(path, &sb) < 0) {
					FUNC5("%s", path);
					retval = 0;
					break;
				} else if (!FUNC0(sb.st_mode)) {
					if (last)
						errno = EEXIST;
					else
						errno = ENOTDIR;
					FUNC5("%s", path);
					retval = 0;
					break;
				}
				if (last)
					retval = 2;
			} else {
				FUNC5("%s", path);
				retval = 0;
				break;
			}
		} else if (vflag)
			FUNC2("%s\n", path);
		if (!last)
		    *p = '/';
	}
	if (!first && !last)
		(void)FUNC4(oumask);
	return (retval);
}