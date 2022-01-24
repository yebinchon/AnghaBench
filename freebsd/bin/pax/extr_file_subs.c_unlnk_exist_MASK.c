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
 int PAX_DIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ kflag ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

int
FUNC5(char *name, int type)
{
	struct stat sb;

	/*
	 * the file does not exist, or -k we are done
	 */
	if (FUNC1(name, &sb) < 0)
		return(0);
	if (kflag)
		return(-1);

	if (FUNC0(sb.st_mode)) {
		/*
		 * try to remove a directory, if it fails and we were going to
		 * create a directory anyway, tell the caller (return a 1)
		 */
		if (FUNC2(name) < 0) {
			if (type == PAX_DIR)
				return(1);
			FUNC3(1,errno,"Unable to remove directory %s", name);
			return(-1);
		}
		return(0);
	}

	/*
	 * try to get rid of all non-directory type nodes
	 */
	if (FUNC4(name) < 0) {
		FUNC3(1, errno, "Could not unlink %s", name);
		return(-1);
	}
	return(0);
}