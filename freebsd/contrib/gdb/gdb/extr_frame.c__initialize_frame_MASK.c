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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  backtrace_limit ; 
 int /*<<< orphan*/  backtrace_past_main ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  class_obscure ; 
 int /*<<< orphan*/  frame_cache_obstack ; 
 int /*<<< orphan*/  frame_debug ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_backtrace_cmd ; 
 int /*<<< orphan*/  set_backtrace_cmdlist ; 
 int /*<<< orphan*/  setdebuglist ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  show_backtrace_cmd ; 
 int /*<<< orphan*/  show_backtrace_cmdlist ; 
 int /*<<< orphan*/  showdebuglist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_zinteger ; 

void
FUNC6 (void)
{
  FUNC5 (&frame_cache_obstack);

  FUNC0 ("backtrace", class_maintenance, set_backtrace_cmd, "\
Set backtrace specific variables.\n\
Configure backtrace variables such as the backtrace limit",
		  &set_backtrace_cmdlist, "set backtrace ",
		  0/*allow-unknown*/, &setlist);
  FUNC0 ("backtrace", class_maintenance, show_backtrace_cmd, "\
Show backtrace specific variables\n\
Show backtrace variables such as the backtrace limit",
		  &show_backtrace_cmdlist, "show backtrace ",
		  0/*allow-unknown*/, &showlist);

  FUNC2 ("past-main", class_obscure,
			   &backtrace_past_main, "\
Set whether backtraces should continue past \"main\".\n\
Normally the caller of \"main\" is not of interest, so GDB will terminate\n\
the backtrace at \"main\".  Set this variable if you need to see the rest\n\
of the stack trace.", "\
Show whether backtraces should continue past \"main\".\n\
Normally the caller of \"main\" is not of interest, so GDB will terminate\n\
the backtrace at \"main\".  Set this variable if you need to see the rest\n\
of the stack trace.",
			   NULL, NULL, &set_backtrace_cmdlist,
			   &show_backtrace_cmdlist);

  FUNC3 ("limit", class_obscure,
			    &backtrace_limit, "\
Set an upper bound on the number of backtrace levels.\n\
No more than the specified number of frames can be displayed or examined.\n\
Zero is unlimited.", "\
Show the upper bound on the number of backtrace levels.",
			    NULL, NULL, &set_backtrace_cmdlist,
			    &show_backtrace_cmdlist);

  /* Debug this files internals. */
  FUNC4 (FUNC1 ("frame", class_maintenance, var_zinteger,
				  &frame_debug, "Set frame debugging.\n\
When non-zero, frame specific internal debugging is enabled.", &setdebuglist),
		     &showdebuglist);
}