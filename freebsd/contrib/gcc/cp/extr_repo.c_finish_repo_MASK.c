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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ errorcount ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* flag_random_seed ; 
 int /*<<< orphan*/  flag_use_repository ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 () ; 
 char* main_input_filename ; 
 scalar_t__ pending_repo ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 scalar_t__ sorrycount ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

void
FUNC11 (void)
{
  tree t;
  char *dir, *args;
  FILE *repo_file;

  if (!flag_use_repository)
    return;

  if (errorcount || sorrycount)
    return;

  repo_file = FUNC9 ();
  if (repo_file == 0)
    goto out;

  FUNC6 (repo_file, "M %s\n", main_input_filename);
  dir = FUNC8 ();
  FUNC6 (repo_file, "D %s\n", dir);
  args = FUNC7 ("COLLECT_GCC_OPTIONS");
  if (args)
    {
      FUNC6 (repo_file, "A %s", args);
      /* If -frandom-seed is not among the ARGS, then add the value
	 that we chose.  That will ensure that the names of types from
	 anonymous namespaces will get the same mangling when this
	 file is recompiled.  */
      if (!FUNC10 (args, "'-frandom-seed="))
	FUNC6 (repo_file, " '-frandom-seed=%s'", flag_random_seed);
      FUNC6 (repo_file, "\n");
    }

  for (t = pending_repo; t; t = FUNC3 (t))
    {
      tree val = FUNC4 (t);
      tree name = FUNC0 (val);
      char type = FUNC2 (name) ? 'C' : 'O';
      FUNC6 (repo_file, "%c %s\n", type, FUNC1 (name));
    }

 out:
  if (repo_file)
    FUNC5 (repo_file);
}