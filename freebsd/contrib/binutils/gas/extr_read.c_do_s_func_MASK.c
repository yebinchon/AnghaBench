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
 scalar_t__ DEBUG_STABS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,...) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ debug_type ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  stdoutput ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11 (int end_p, const char *default_prefix)
{
  /* Record the current function so that we can issue an error message for
     misplaced .func,.endfunc, and also so that .endfunc needs no
     arguments.  */
  static char *current_name;
  static char *current_label;

  if (end_p)
    {
      if (current_name == NULL)
	{
	  FUNC2 (FUNC1("missing .func"));
	  FUNC7 ();
	  return;
	}

      if (debug_type == DEBUG_STABS)
	FUNC8 (current_name, current_label);

      current_name = current_label = NULL;
    }
  else /* ! end_p */
    {
      char *name, *label;
      char delim1, delim2;

      if (current_name != NULL)
	{
	  FUNC2 (FUNC1(".endfunc missing for previous .func"));
	  FUNC7 ();
	  return;
	}

      name = input_line_pointer;
      delim1 = FUNC6 ();
      name = FUNC10 (name);
      *input_line_pointer = delim1;
      FUNC0 ();
      if (*input_line_pointer != ',')
	{
	  if (default_prefix)
	    FUNC3 (&label, "%s%s", default_prefix, name);
	  else
	    {
	      char leading_char = FUNC4 (stdoutput);
	      /* Missing entry point, use function's name with the leading
		 char prepended.  */
	      if (leading_char)
		FUNC3 (&label, "%c%s", leading_char, name);
	      else
		label = name;
	    }
	}
      else
	{
	  ++input_line_pointer;
	  FUNC0 ();
	  label = input_line_pointer;
	  delim2 = FUNC6 ();
	  label = FUNC10 (label);
	  *input_line_pointer = delim2;
	}

      if (debug_type == DEBUG_STABS)
	FUNC9 (name, label);

      current_name = name;
      current_label = label;
    }

  FUNC5 ();
}