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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xfree ; 

char *
FUNC4 (int pid)
{
  char *path;
  char *buf;

  FUNC2 (&path, "/proc/%d/file", pid);
  buf = FUNC3 (MAXPATHLEN, sizeof (char));
  FUNC0 (xfree, path);
  FUNC0 (xfree, buf);

  if (FUNC1 (path, buf, MAXPATHLEN) > 0)
    return buf;

  return NULL;
}