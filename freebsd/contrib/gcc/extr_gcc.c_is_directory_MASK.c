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
 int /*<<< orphan*/  DIR_SEPARATOR ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC7 (const char *path1, bool linker)
{
  int len1;
  char *path;
  char *cp;
  struct stat st;

  /* Ensure the string ends with "/.".  The resulting path will be a
     directory even if the given path is a symbolic link.  */
  len1 = FUNC5 (path1);
  path = FUNC2 (3 + len1);
  FUNC3 (path, path1, len1);
  cp = path + len1;
  if (!FUNC0 (cp[-1]))
    *cp++ = DIR_SEPARATOR;
  *cp++ = '.';
  *cp = '\0';

#ifndef FREEBSD_NATIVE
  /* Exclude directories that the linker is known to search.  */
  if (linker
      && FUNC0 (path[0])
      && ((cp - path == 6
	   && FUNC6 (path + 1, "lib", 3) == 0)
	  || (cp - path == 10
	      && FUNC6 (path + 1, "usr", 3) == 0
	      && FUNC0 (path[4])
	      && FUNC6 (path + 5, "lib", 3) == 0)))
    return 0;
#endif /* FREEBSD_NATIVE */

  return (FUNC4 (path, &st) >= 0 && FUNC1 (st.st_mode));
}