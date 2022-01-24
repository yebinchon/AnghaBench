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
struct TYPE_2__ {int /*<<< orphan*/  (* end_source_file ) (int /*<<< orphan*/ ) ;scalar_t__ start_end_main_source_file; int /*<<< orphan*/  (* start_source_file ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* debug_hooks ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * in_fnames ; 
 unsigned int num_in_fnames ; 
 int /*<<< orphan*/  parse_in ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  this_input_filename ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int yydebug ; 

void
FUNC11 (int set_yydebug)
{
  unsigned int i;

  /* Enable parser debugging, if requested and we can.  If requested
     and we can't, notify the user.  */
#if YYDEBUG != 0
  yydebug = set_yydebug;
#else
  if (set_yydebug)
    FUNC10 (0, "YYDEBUG was not defined at build time, -dy ignored");
#endif

  i = 0;
  for (;;)
    {
      /* Start the main input file, if the debug writer wants it. */
      if (debug_hooks->start_end_main_source_file)
	(*debug_hooks->start_source_file) (0, this_input_filename);
      FUNC4 ();
      FUNC5 ();
      FUNC7 ();
      FUNC0 ();
      FUNC3 ();
      FUNC6 ();
      /* And end the main input file, if the debug writer wants it  */
      if (debug_hooks->start_end_main_source_file)
	(*debug_hooks->end_source_file) (0);
      if (++i >= num_in_fnames)
	break;
      FUNC2 (parse_in);
      this_input_filename
	= FUNC1 (parse_in, in_fnames[i]);
      /* If an input file is missing, abandon further compilation.
	 cpplib has issued a diagnostic.  */
      if (!this_input_filename)
	break;
    }
}