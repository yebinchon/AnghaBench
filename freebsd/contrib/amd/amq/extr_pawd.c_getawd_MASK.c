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

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static char *
FUNC4(char *path, size_t l)
{
#ifdef HAVE_GETCWD
  char *wd = getcwd(path, MAXPATHLEN);
#else /* not HAVE_GETCWD */
  char *wd = FUNC1(path);
#endif /* not HAVE_GETCWD */

  if (wd == NULL) {
    return NULL;
  }
  FUNC3(path, FUNC2(wd), l);
  return path;
}