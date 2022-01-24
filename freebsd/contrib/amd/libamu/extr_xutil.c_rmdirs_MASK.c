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
struct stat {int st_mode; } ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ EEXIST ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOTEMPTY ; 
 scalar_t__ EROFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char*) ; 

void
FUNC7(char *dir)
{
  char *xdp = FUNC6(dir);
  char *dp;

  do {
    struct stat stb;
    /*
     * Try to find out whether this was
     * created by amd.  Do this by checking
     * for owner write permission.
     */
    if (FUNC4(xdp, &stb) == 0 && (stb.st_mode & 0200) == 0) {
      if (FUNC3(xdp) < 0) {
	if (errno != ENOTEMPTY &&
	    errno != EBUSY &&
	    errno != EEXIST &&
	    errno != EROFS &&
	    errno != EINVAL)
	  FUNC2(XLOG_ERROR, "rmdir(%s): %m", xdp);
	break;
      } else {
	FUNC1("rmdir(%s)", xdp);
      }
    } else {
      break;
    }

    dp = FUNC5(xdp, '/');
    if (dp)
      *dp = '\0';
  } while (dp && dp > xdp);

  FUNC0(xdp);
}