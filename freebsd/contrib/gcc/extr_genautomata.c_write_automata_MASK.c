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
 char* CPU_UNITS_QUERY_MACRO_NAME ; 
 char* DFA_INSN_CODES_LENGTH_VARIABLE_NAME ; 
 char* DFA_INSN_CODES_VARIABLE_NAME ; 
 int /*<<< orphan*/  FATAL_EXIT_CODE ; 
 int /*<<< orphan*/  all_time ; 
 int /*<<< orphan*/  check_time ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  generation_time ; 
 scalar_t__ have_error ; 
 int /*<<< orphan*/  irp ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/ * output_description_file ; 
 int /*<<< orphan*/  output_description_file_name ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  output_time ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ progress_flag ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *) ; 
 scalar_t__ time_flag ; 
 scalar_t__ v_flag ; 

__attribute__((used)) static void
FUNC45 (void)
{
  output_time = FUNC0 ();
  if (progress_flag)
    FUNC13 (stderr, "Forming and outputting automata tables...");
  FUNC38 ();
  if (progress_flag)
    {
      FUNC13 (stderr, "done\n");
      FUNC13 (stderr, "Output functions to work with automata...");
    }
  FUNC16 ();
  FUNC31 ();
  FUNC28 ();
  FUNC30 ();
  /* Cache of insn dfa codes: */
  FUNC13 (&output_file, "\nstatic int *%s;\n", DFA_INSN_CODES_VARIABLE_NAME);
  FUNC13 (&output_file, "\nstatic int %s;\n\n",
	   DFA_INSN_CODES_LENGTH_VARIABLE_NAME);
  FUNC22 ();
  FUNC40 ();
  FUNC33 ();
  FUNC26 ();
  FUNC18 ();
  FUNC36 ();
  FUNC29 ();
  FUNC35 ();
  FUNC32 ();
  FUNC27 ();
  FUNC25 ();
  FUNC34 ();
  /* Output function get_cpu_unit_code.  */
  FUNC13 (&output_file, "\n#if %s\n\n", CPU_UNITS_QUERY_MACRO_NAME);
  FUNC24 ();
  FUNC17 ();
  FUNC13 (&output_file, "\n#endif /* #if %s */\n\n",
	   CPU_UNITS_QUERY_MACRO_NAME);
  FUNC20 ();
  FUNC23 ();
  FUNC21 ();
  if (progress_flag)
    FUNC13 (stderr, "done\n");
  if (v_flag)
    {
      output_description_file = FUNC12 (output_description_file_name, "w");
      if (output_description_file == NULL)
	{
	  FUNC41 (output_description_file_name);
	  FUNC1 (FATAL_EXIT_CODE);
	}
      if (progress_flag)
	FUNC13 (stderr, "Output automata description...");
      FUNC19 ();
      FUNC15 ();
      if (progress_flag)
	FUNC13 (stderr, "done\n");
      FUNC37 (output_description_file);
    }
  FUNC37 (stderr);
  FUNC44 (&output_time);
  FUNC39 (stderr);
  FUNC11 ();
  FUNC6 ();
  FUNC7 ();
  if (time_flag)
    {
      FUNC13 (stderr, "Summary:\n");
      FUNC13 (stderr, "  check time ");
      FUNC42 (stderr, check_time);
      FUNC13 (stderr, ", generation time ");
      FUNC42 (stderr, generation_time);
      FUNC13 (stderr, ", all time ");
      FUNC42 (stderr, all_time);
      FUNC13 (stderr, "\n");
    }
  /* Finish all work.  */
  if (output_description_file != NULL)
    {
      FUNC5 (output_description_file);
      if (FUNC4 (stdout) != 0)
	FUNC2 ("Error in writing DFA description file %s",
               output_description_file_name);
      FUNC3 (output_description_file);
    }
  FUNC8 ();
  FUNC10 ();
  FUNC9 ();
  FUNC14 (&irp, NULL);
  if (have_error && output_description_file != NULL)
    FUNC43 (output_description_file_name);
}