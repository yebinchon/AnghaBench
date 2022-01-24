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
 int S_IFDIR ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int errno ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*) ; 

int
FUNC6(char *path, int mode)
{
  /*
   * take a copy in case path is in readonly store
   */
  char *p2 = FUNC5(path);
  char *sp = p2;
  struct stat stb;
  int error_so_far = 0;

  /*
   * Skip through the string make the directories.
   * Mostly ignore errors - the result is tested at the end.
   *
   * This assumes we are root so that we can do mkdir in a
   * mode 555 directory...
   */
  while ((sp = FUNC4(sp + 1, '/'))) {
    *sp = '\0';
    if (FUNC2(p2, mode) < 0) {
      error_so_far = errno;
    } else {
      FUNC1("mkdir(%s)", p2);
    }
    *sp = '/';
  }

  if (FUNC2(p2, mode) < 0) {
    error_so_far = errno;
  } else {
    FUNC1("mkdir(%s)", p2);
  }

  FUNC0(p2);

  return FUNC3(path, &stb) == 0 &&
    (stb.st_mode & S_IFMT) == S_IFDIR ? 0 : error_so_far;
}