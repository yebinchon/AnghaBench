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
 char* NDFA_OPTION ; 
 char* NO_MINIMIZATION_OPTION ; 
 char* PROGRESS_OPTION ; 
 char const* STANDARD_OUTPUT_DESCRIPTION_FILE_SUFFIX ; 
 char* TIME_OPTION ; 
 char* V_OPTION ; 
 char* W_OPTION ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char const* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  irp ; 
 int ndfa_flag ; 
 int no_minimization_flag ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * output_description_file ; 
 int /*<<< orphan*/  output_description_file_name ; 
 int /*<<< orphan*/  output_file ; 
 int progress_flag ; 
 scalar_t__ split_argument ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char const*) ; 
 int time_flag ; 
 int v_flag ; 
 int w_flag ; 

__attribute__((used)) static void
FUNC13 (int argc, char **argv)
{
  const char *base_name;
  int i;

  ndfa_flag = 0;
  split_argument = 0;  /* default value */
  no_minimization_flag = 0;
  time_flag = 0;
  v_flag = 0;
  w_flag = 0;
  progress_flag = 0;
  for (i = 2; i < argc; i++)
    if (FUNC11 (argv [i], NO_MINIMIZATION_OPTION) == 0)
      no_minimization_flag = 1;
    else if (FUNC11 (argv [i], TIME_OPTION) == 0)
      time_flag = 1;
    else if (FUNC11 (argv [i], V_OPTION) == 0)
      v_flag = 1;
    else if (FUNC11 (argv [i], W_OPTION) == 0)
      w_flag = 1;
    else if (FUNC11 (argv [i], NDFA_OPTION) == 0)
      ndfa_flag = 1;
    else if (FUNC11 (argv [i], PROGRESS_OPTION) == 0)
      progress_flag = 1;
    else if (FUNC11 (argv [i], "-split") == 0)
      {
	if (i + 1 >= argc)
	  FUNC1 ("-split has no argument.");
	FUNC1 ("option `-split' has not been implemented yet\n");
	/* split_argument = atoi (argument_vect [i + 1]); */
      }

  /* Initialize IR storage.  */
  FUNC10 (&irp);
  FUNC3 ();
  FUNC5 ();
  FUNC4 ();
  output_file = stdout;
  output_description_file = NULL;
  base_name = FUNC0 (argv[1]);
  FUNC9 (&irp, base_name,
		FUNC12 (base_name) - FUNC12 (FUNC2 (base_name)));
  FUNC9 (&irp, STANDARD_OUTPUT_DESCRIPTION_FILE_SUFFIX,
		FUNC12 (STANDARD_OUTPUT_DESCRIPTION_FILE_SUFFIX) + 1);
  FUNC6 (&irp, '\0');
  output_description_file_name = FUNC7 (&irp);
  (void) FUNC8 (&irp);
}