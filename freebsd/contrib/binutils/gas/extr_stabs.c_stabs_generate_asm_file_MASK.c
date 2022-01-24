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
 int /*<<< orphan*/  N_SO ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ use_gnu_debug_info_extensions ; 

void
FUNC6 (void)
{
  char *file;
  unsigned int lineno;

  FUNC1 (&file, &lineno);
  if (use_gnu_debug_info_extensions)
    {
      char *dir, *dir2;

      dir = FUNC3 ();
      dir2 = FUNC0 (FUNC5 (dir) + 2);
      FUNC4 (dir2, "%s%s", dir, "/");
      FUNC2 (N_SO, dir2);
    }
  FUNC2 (N_SO, file);
}