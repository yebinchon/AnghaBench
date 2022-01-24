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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 char const* P_tmpdir ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  TMPDIR_ENV ; 
 int errno ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 char* tmpname ; 
 char* FUNC7 (scalar_t__) ; 

__attribute__((used)) static int
FUNC8 (void)
{
  char const *tmpdir = FUNC0 (TMPDIR_ENV);
  char const *dir = tmpdir ? tmpdir : P_tmpdir;
  char *buf = FUNC7 (FUNC6 (dir) + 1 + 5 + 6 + 1);
  int fd;
  int e;
  sigset_t procmask;
  sigset_t blocked;
  FUNC5 (buf, "%s/sdiffXXXXXX", dir);
  FUNC3 (&blocked);
  FUNC2 (&blocked, SIGINT);
  FUNC4 (SIG_BLOCK, &blocked, &procmask);
  fd = FUNC1 (buf);
  e = errno;
  if (0 <= fd)
    tmpname = buf;
  FUNC4 (SIG_SETMASK, &procmask, 0);
  errno = e;
  return fd;
}