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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int allow_naked_reg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 char* identifier_chars ; 
 char* input_line_pointer ; 
 int intel_syntax ; 
 int /*<<< orphan*/ * is_end_of_line ; 
 char* register_prefix ; 
 int /*<<< orphan*/  stdoutput ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static void
FUNC7 (int syntax_flag)
{
  /* Find out if register prefixing is specified.  */
  int ask_naked_reg = 0;

  FUNC0 ();
  if (!is_end_of_line[(unsigned char) *input_line_pointer])
    {
      char *string = input_line_pointer;
      int e = FUNC5 ();

      if (FUNC6 (string, "prefix") == 0)
	ask_naked_reg = 1;
      else if (FUNC6 (string, "noprefix") == 0)
	ask_naked_reg = -1;
      else
	FUNC2 (FUNC1("bad argument to syntax directive."));
      *input_line_pointer = e;
    }
  FUNC4 ();

  intel_syntax = syntax_flag;

  if (ask_naked_reg == 0)
    allow_naked_reg = (intel_syntax
		       && (FUNC3 (stdoutput) != '\0'));
  else
    allow_naked_reg = (ask_naked_reg < 0);

  identifier_chars['%'] = intel_syntax && allow_naked_reg ? '%' : 0;
  identifier_chars['$'] = intel_syntax ? '$' : 0;
  register_prefix = allow_naked_reg ? "" : "%";
}