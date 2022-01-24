#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct deferred_opt {scalar_t__ code; char* arg; } ;
struct TYPE_2__ {int warn_dollars; scalar_t__ directives_only; int /*<<< orphan*/  c99; scalar_t__ pedantic; int /*<<< orphan*/  preprocessed; } ;

/* Variables and functions */
 int /*<<< orphan*/  LC_RENAME ; 
 scalar_t__ OPT_A ; 
 scalar_t__ OPT_D ; 
 scalar_t__ OPT_U ; 
 scalar_t__ OPT_imacros ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cpp_opts ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 size_t deferred_count ; 
 struct deferred_opt* deferred_opts ; 
 int /*<<< orphan*/  flag_hosted ; 
 size_t include_cursor ; 
 int /*<<< orphan*/  line_table ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_in ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void
FUNC13 (void)
{
  if (!cpp_opts->preprocessed)
    {
      size_t i;

      FUNC2 (parse_in,
		      FUNC11 (&line_table, LC_RENAME, 0,
				   FUNC0("<built-in>"), 0));

      FUNC5 (parse_in, flag_hosted);
      FUNC1 (parse_in);

      /* We're about to send user input to cpplib, so make it warn for
	 things that we previously (when we sent it internal definitions)
	 told it to not warn.

	 C99 permits implementation-defined characters in identifiers.
	 The documented meaning of -std= is to turn off extensions that
	 conflict with the specified standard, and since a strictly
	 conforming program cannot contain a '$', we do not condition
	 their acceptance on the -std= setting.  */
      cpp_opts->warn_dollars = (cpp_opts->pedantic && !cpp_opts->c99);

      FUNC2 (parse_in,
		      FUNC11 (&line_table, LC_RENAME, 0,
				   FUNC0("<command-line>"), 0));

      for (i = 0; i < deferred_count; i++)
	{
	  struct deferred_opt *opt = &deferred_opts[i];

	  if (opt->code == OPT_D)
	    FUNC4 (parse_in, opt->arg);
	  else if (opt->code == OPT_U)
	    FUNC10 (parse_in, opt->arg);
	  else if (opt->code == OPT_A)
	    {
	      if (opt->arg[0] == '-')
		FUNC9 (parse_in, opt->arg + 1);
	      else
		FUNC3 (parse_in, opt->arg);
	    }
	}

      /* Handle -imacros after -D and -U.  */
      for (i = 0; i < deferred_count; i++)
	{
	  struct deferred_opt *opt = &deferred_opts[i];

	  if (opt->code == OPT_imacros
	      && FUNC7 (parse_in, opt->arg))
	    {
	      /* Disable push_command_line_include callback for now.  */
	      include_cursor = deferred_count + 1;
	      FUNC8 (parse_in);
	    }
	}
    }
  else if (cpp_opts->directives_only)
    FUNC6 (parse_in);

  include_cursor = 0;
  FUNC12 ();
}