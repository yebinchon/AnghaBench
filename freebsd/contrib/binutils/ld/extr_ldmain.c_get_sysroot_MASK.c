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
 int /*<<< orphan*/  BINDIR ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 char const* TARGET_SYSTEM_ROOT ; 
 int /*<<< orphan*/  TOOLBINDIR ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static const char *
FUNC3 (int argc, char **argv)
{
  int i;
  const char *path;

  for (i = 1; i < argc; i++)
    if (FUNC0 (argv[i], "--sysroot="))
      return argv[i] + FUNC2 ("--sysroot=");

  path = FUNC1 (BINDIR);
  if (path)
    return path;

  path = FUNC1 (TOOLBINDIR);
  if (path)
    return path;

  return TARGET_SYSTEM_ROOT;
}