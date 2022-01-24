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
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_info ; 
 int /*<<< orphan*/  class_run ; 
 int /*<<< orphan*/  info_dead_names_cmd ; 
 int /*<<< orphan*/  info_port_rights_cmd ; 
 int /*<<< orphan*/  info_port_sets_cmd ; 
 int /*<<< orphan*/  info_recv_rights_cmd ; 
 int /*<<< orphan*/  info_send_rights_cmd ; 
 int /*<<< orphan*/  infolist ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  set_exceptions_cmd ; 
 int /*<<< orphan*/  set_noninvasive_cmd ; 
 int /*<<< orphan*/  set_sig_thread_cmd ; 
 int /*<<< orphan*/  set_signals_cmd ; 
 int /*<<< orphan*/  set_stopped_cmd ; 
 int /*<<< orphan*/  set_task_cmd ; 
 int /*<<< orphan*/  set_task_cmd_list ; 
 int /*<<< orphan*/  set_task_detach_sc_cmd ; 
 int /*<<< orphan*/  set_task_exc_port_cmd ; 
 int /*<<< orphan*/  set_task_pause_cmd ; 
 int /*<<< orphan*/  set_thread_default_cmd_list ; 
 int /*<<< orphan*/  set_thread_default_detach_sc_cmd ; 
 int /*<<< orphan*/  set_thread_default_pause_cmd ; 
 int /*<<< orphan*/  set_thread_default_run_cmd ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  show_exceptions_cmd ; 
 int /*<<< orphan*/  show_sig_thread_cmd ; 
 int /*<<< orphan*/  show_signals_cmd ; 
 int /*<<< orphan*/  show_task_cmd ; 
 int /*<<< orphan*/  show_task_cmd_list ; 
 int /*<<< orphan*/  show_task_detach_sc_cmd ; 
 int /*<<< orphan*/  show_task_pause_cmd ; 
 int /*<<< orphan*/  show_thread_default_cmd_list ; 
 int /*<<< orphan*/  show_thread_default_detach_sc_cmd ; 
 int /*<<< orphan*/  show_thread_default_pause_cmd ; 
 int /*<<< orphan*/  show_thread_default_run_cmd ; 
 int /*<<< orphan*/  showlist ; 

__attribute__((used)) static void
FUNC4 (void)
{
  FUNC1 ("pause", class_run, set_thread_default_pause_cmd,
	   "Set whether the new threads are suspended while gdb has control.\n\
This property normally has no effect because the whole task is\n\
suspended, however, that may be disabled with \"set task pause off\".\n\
The default value is \"off\".",
	   &set_thread_default_cmd_list);
  FUNC1 ("pause", no_class, show_thread_default_pause_cmd,
	   "Show whether new threads are suspended while gdb has control.",
	   &show_thread_default_cmd_list);
  
  FUNC1 ("run", class_run, set_thread_default_run_cmd,
	   "Set whether new threads are allowed to run \
(once gdb has noticed them).",
	   &set_thread_default_cmd_list);
  FUNC1 ("run", no_class, show_thread_default_run_cmd,
	   "Show whether new threads are allowed to run \
(once gdb has noticed them).",
	   &show_thread_default_cmd_list);
  
  FUNC1 ("detach-suspend-count", class_run, set_thread_default_detach_sc_cmd,
	   "Set the default detach-suspend-count value for new threads.",
	   &set_thread_default_cmd_list);
  FUNC1 ("detach-suspend-count", no_class, show_thread_default_detach_sc_cmd,
	   "Show the default detach-suspend-count value for new threads.",
	   &show_thread_default_cmd_list);

  FUNC1 ("signals", class_run, set_signals_cmd,
	   "Set whether the inferior process's signals will be intercepted.\n\
Mach exceptions (such as breakpoint traps) are not affected.",
	   &setlist);
  FUNC0 ("sigs", "signals", class_run, 1, &setlist);
  FUNC1 ("signals", no_class, show_signals_cmd,
	   "Show whether the inferior process's signals will be intercepted.",
	   &showlist);
  FUNC0 ("sigs", "signals", no_class, 1, &showlist);

  FUNC1 ("signal-thread", class_run, set_sig_thread_cmd,
	   "Set the thread that gdb thinks is the libc signal thread.\n\
This thread is run when delivering a signal to a non-stopped process.",
	   &setlist);
  FUNC0 ("sigthread", "signal-thread", class_run, 1, &setlist);
  FUNC1 ("signal-thread", no_class, show_sig_thread_cmd,
	   "Set the thread that gdb thinks is the libc signal thread.",
	   &showlist);
  FUNC0 ("sigthread", "signal-thread", no_class, 1, &showlist);

  FUNC1 ("stopped", class_run, set_stopped_cmd,
	   "Set whether gdb thinks the inferior process is stopped \
as with SIGSTOP.\n\
Stopped process will be continued by sending them a signal.",
	   &setlist);
  FUNC1 ("stopped", no_class, show_signals_cmd,
	   "Show whether gdb thinks the inferior process is stopped \
as with SIGSTOP.",
	   &showlist);

  FUNC1 ("exceptions", class_run, set_exceptions_cmd,
	   "Set whether exceptions in the inferior process will be trapped.\n\
When exceptions are turned off, neither breakpoints nor single-stepping\n\
will work.",
	   &setlist);
  /* Allow `set exc' despite conflict with `set exception-port'.  */
  FUNC0 ("exc", "exceptions", class_run, 1, &setlist);
  FUNC1 ("exceptions", no_class, show_exceptions_cmd,
	   "Show whether exceptions in the inferior process will be trapped.",
	   &showlist);

  FUNC3 ("task", no_class, set_task_cmd,
		  "Command prefix for setting task attributes.",
		  &set_task_cmd_list, "set task ", 0, &setlist);
  FUNC3 ("task", no_class, show_task_cmd,
		  "Command prefix for showing task attributes.",
		  &show_task_cmd_list, "show task ", 0, &showlist);

  FUNC1 ("pause", class_run, set_task_pause_cmd,
	   "Set whether the task is suspended while gdb has control.\n\
A value of \"on\" takes effect immediately, otherwise nothing happens\n\
until the next time the program is continued.\n\
When setting this to \"off\", \"set thread default pause on\" can be\n\
used to pause individual threads by default instead.",
	   &set_task_cmd_list);
  FUNC1 ("pause", no_class, show_task_pause_cmd,
	   "Show whether the task is suspended while gdb has control.",
	   &show_task_cmd_list);

  FUNC1 ("detach-suspend-count", class_run, set_task_detach_sc_cmd,
	   "Set the suspend count will leave on the thread when detaching.",
	   &set_task_cmd_list);
  FUNC1 ("detach-suspend-count", no_class, show_task_detach_sc_cmd,
	   "Show the suspend count will leave on the thread when detaching.",
	   &show_task_cmd_list);

  FUNC1 ("exception-port", no_class, set_task_exc_port_cmd,
	   "Set the task exception port to which we forward exceptions.\n\
The argument should be the value of the send right in the task.",
	   &set_task_cmd_list);
  FUNC0 ("excp", "exception-port", no_class, 1, &set_task_cmd_list);
  FUNC0 ("exc-port", "exception-port", no_class, 1,
		 &set_task_cmd_list);

  /* A convenient way of turning on all options require to noninvasively
     debug running tasks.  */
  FUNC1 ("noninvasive", no_class, set_noninvasive_cmd,
	   "Set task options so that we interfere as little as possible.\n\
This is the same as setting `task pause', `exceptions', and\n\
`signals' to the opposite value.",
	   &setlist);

  /* Commands to show information about the task's ports.  */
  FUNC1 ("send-rights", class_info, info_send_rights_cmd,
	   "Show information about the task's send rights",
	   &infolist);
  FUNC1 ("receive-rights", class_info, info_recv_rights_cmd,
	   "Show information about the task's receive rights",
	   &infolist);
  FUNC1 ("port-rights", class_info, info_port_rights_cmd,
	   "Show information about the task's port rights",
	   &infolist);
  FUNC1 ("port-sets", class_info, info_port_sets_cmd,
	   "Show information about the task's port sets",
	   &infolist);
  FUNC1 ("dead-names", class_info, info_dead_names_cmd,
	   "Show information about the task's dead names",
	   &infolist);
  FUNC2 ("ports", "port-rights", 1);
  FUNC2 ("port", "port-rights", 1);
  FUNC2 ("psets", "port-sets", 1);
}