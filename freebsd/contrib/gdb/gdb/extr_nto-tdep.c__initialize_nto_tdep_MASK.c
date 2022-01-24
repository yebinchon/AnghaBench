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
 int /*<<< orphan*/  SIGPHOTON ; 
 int /*<<< orphan*/  SIGSELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  nto_internal_debugging ; 
 int /*<<< orphan*/  regset_core_fns ; 
 int /*<<< orphan*/  setdebuglist ; 
 int /*<<< orphan*/  showdebuglist ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  var_zinteger ; 

void
FUNC6 (void)
{
  FUNC1 ("nto-debug", class_maintenance, var_zinteger,
		   &nto_internal_debugging, "Set QNX NTO internal debugging.\n\
When non-zero, nto specific debug info is\n\
displayed. Different information is displayed\n\
for different positive values.", "Show QNX NTO internal debugging.\n",
		   NULL, NULL, &setdebuglist, &showdebuglist);

  /* We use SIG45 for pulses, or something, so nostop, noprint
     and pass them.  */
  FUNC4 (FUNC5 ("SIG45"), 0);
  FUNC3 (FUNC5 ("SIG45"), 0);
  FUNC2 (FUNC5 ("SIG45"), 1);

  /* By default we don't want to stop on these two, but we do want to pass.  */
#if defined(SIGSELECT)
  signal_stop_update (SIGSELECT, 0);
  signal_print_update (SIGSELECT, 0);
  signal_pass_update (SIGSELECT, 1);
#endif

#if defined(SIGPHOTON)
  signal_stop_update (SIGPHOTON, 0);
  signal_print_update (SIGPHOTON, 0);
  signal_pass_update (SIGPHOTON, 1);
#endif

  /* Register core file support.  */
  FUNC0 (&regset_core_fns);
}