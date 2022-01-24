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
 int PEXECUTE_FIRST ; 
 int PEXECUTE_LAST ; 
 int PEXECUTE_SEARCH ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t aux_info_file_name_index ; 
 int /*<<< orphan*/  aux_info_suffix ; 
 int /*<<< orphan*/ * compile_params ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 size_t input_file_name_index ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,char* const*,char*,int /*<<< orphan*/ *,char**,char**,int) ; 
 char* pname ; 
 int FUNC10 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  quiet_flag ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (int) ; 

__attribute__((used)) static int
FUNC13 (const char *base_filename)
{
  if (!input_file_name_index)
    FUNC7 ("");

  /* Store the full source file name in the argument vector.  */
  compile_params[input_file_name_index] = FUNC11 (NULL, base_filename);
  /* Add .X to source file name to get aux-info file name.  */
  compile_params[aux_info_file_name_index] =
    FUNC4 (compile_params[input_file_name_index], aux_info_suffix, NULL);

  if (!quiet_flag)
    FUNC8 ("%s: compiling '%s'\n",
	    pname, compile_params[input_file_name_index]);

  {
    char *errmsg_fmt, *errmsg_arg;
    int wait_status, pid;

    pid = FUNC9 (compile_params[0], (char * const *) compile_params,
		    pname, NULL, &errmsg_fmt, &errmsg_arg,
		    PEXECUTE_FIRST | PEXECUTE_LAST | PEXECUTE_SEARCH);

    if (pid == -1)
      {
	int errno_val = errno;
	FUNC5 (stderr, "%s: ", pname);
	FUNC5 (stderr, errmsg_fmt, errmsg_arg);
	FUNC5 (stderr, ": %s\n", FUNC12 (errno_val));
	return 0;
      }

    pid = FUNC10 (pid, &wait_status, 0);
    if (pid == -1)
      {
	FUNC8 ("%s: wait: %s\n", pname, FUNC12 (errno));
	return 0;
      }
    if (FUNC2 (wait_status))
      {
	FUNC8 ("%s: subprocess got fatal signal %d\n",
		pname, FUNC3 (wait_status));
	return 0;
      }
    if (FUNC1 (wait_status))
      {
	if (FUNC0 (wait_status) != 0)
	  {
	    FUNC8 ("%s: %s exited with status %d\n",
		    pname, compile_params[0], FUNC0 (wait_status));
	    return 0;
	  }
	return 1;
      }
    FUNC6 ();
  }
}