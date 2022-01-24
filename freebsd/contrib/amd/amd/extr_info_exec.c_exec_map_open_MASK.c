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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int FD_SETSIZE ; 
 int O_NOCTTY ; 
 int O_WRONLY ; 
 int STDERR_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(char *emap, char *key)
{
  pid_t p1, p2;
  int pdes[2], nullfd, i;
  char *argv[3];

  if (!emap)
    return 0;

  argv[0] = emap;
  argv[1] = key;
  argv[2] = NULL;

  if ((nullfd = FUNC4("/dev/null", O_WRONLY|O_NOCTTY)) < 0)
    return -1;

  if (FUNC5(pdes) < 0) {
    FUNC0(nullfd);
    return -1;
  }

  switch ((p1 = FUNC7())) {
  case -1:
    /* parent: fork error */
    FUNC0(nullfd);
    FUNC0(pdes[0]);
    FUNC0(pdes[1]);
    return -1;
  case 0:
    /* child #1 */
    p2 = FUNC7();
    switch (p2) {
    case -1:
      /* child #1: fork error */
      FUNC3(errno);
    case 0:
      /* child #2: init will reap our status */
      if (pdes[1] != STDOUT_FILENO) {
	FUNC1(pdes[1], STDOUT_FILENO);
	FUNC0(pdes[1]);
      }

      if (nullfd != STDERR_FILENO) {
	FUNC1(nullfd, STDERR_FILENO);
	FUNC0(nullfd);
      }

      for (i=0; i<FD_SETSIZE; i++)
	if (i != STDOUT_FILENO  &&  i != STDERR_FILENO)
	  FUNC0(i);

      /* make the write descriptor non-blocking */
      if (!FUNC6(STDOUT_FILENO)) {
	FUNC0(STDOUT_FILENO);
	FUNC3(-1);
      }

      FUNC2(emap, argv, NULL);
      FUNC3(errno);		/* in case execve failed */
    }

    /* child #1 */
    FUNC3(0);
  }

  /* parent */
  FUNC0(nullfd);
  FUNC0(pdes[1]);

  /* anti-zombie insurance */
  while (FUNC8(p1, 0, 0) < 0)
    if (errno != EINTR)
      FUNC3(errno);

  /* make the read descriptor non-blocking */
  if (!FUNC6(pdes[0])) {
    FUNC0(pdes[0]);
    return -1;
  }

  return pdes[0];
}