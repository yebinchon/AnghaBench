
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_alias_cmd (char*,char*,int ,int,int *) ;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int add_info_alias (char*,char*,int) ;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int ,int *) ;
 int class_info ;
 int class_run ;
 int info_dead_names_cmd ;
 int info_port_rights_cmd ;
 int info_port_sets_cmd ;
 int info_recv_rights_cmd ;
 int info_send_rights_cmd ;
 int infolist ;
 int no_class ;
 int set_exceptions_cmd ;
 int set_noninvasive_cmd ;
 int set_sig_thread_cmd ;
 int set_signals_cmd ;
 int set_stopped_cmd ;
 int set_task_cmd ;
 int set_task_cmd_list ;
 int set_task_detach_sc_cmd ;
 int set_task_exc_port_cmd ;
 int set_task_pause_cmd ;
 int set_thread_default_cmd_list ;
 int set_thread_default_detach_sc_cmd ;
 int set_thread_default_pause_cmd ;
 int set_thread_default_run_cmd ;
 int setlist ;
 int show_exceptions_cmd ;
 int show_sig_thread_cmd ;
 int show_signals_cmd ;
 int show_task_cmd ;
 int show_task_cmd_list ;
 int show_task_detach_sc_cmd ;
 int show_task_pause_cmd ;
 int show_thread_default_cmd_list ;
 int show_thread_default_detach_sc_cmd ;
 int show_thread_default_pause_cmd ;
 int show_thread_default_run_cmd ;
 int showlist ;

__attribute__((used)) static void
add_task_commands (void)
{
  add_cmd ("pause", class_run, set_thread_default_pause_cmd,
    "Set whether the new threads are suspended while gdb has control.\nThis property normally has no effect because the whole task is\nsuspended, however, that may be disabled with \"set task pause off\".\nThe default value is \"off\".",



    &set_thread_default_cmd_list);
  add_cmd ("pause", no_class, show_thread_default_pause_cmd,
    "Show whether new threads are suspended while gdb has control.",
    &show_thread_default_cmd_list);

  add_cmd ("run", class_run, set_thread_default_run_cmd,
    "Set whether new threads are allowed to run (once gdb has noticed them).",

    &set_thread_default_cmd_list);
  add_cmd ("run", no_class, show_thread_default_run_cmd,
    "Show whether new threads are allowed to run (once gdb has noticed them).",

    &show_thread_default_cmd_list);

  add_cmd ("detach-suspend-count", class_run, set_thread_default_detach_sc_cmd,
    "Set the default detach-suspend-count value for new threads.",
    &set_thread_default_cmd_list);
  add_cmd ("detach-suspend-count", no_class, show_thread_default_detach_sc_cmd,
    "Show the default detach-suspend-count value for new threads.",
    &show_thread_default_cmd_list);

  add_cmd ("signals", class_run, set_signals_cmd,
    "Set whether the inferior process's signals will be intercepted.\nMach exceptions (such as breakpoint traps) are not affected.",

    &setlist);
  add_alias_cmd ("sigs", "signals", class_run, 1, &setlist);
  add_cmd ("signals", no_class, show_signals_cmd,
    "Show whether the inferior process's signals will be intercepted.",
    &showlist);
  add_alias_cmd ("sigs", "signals", no_class, 1, &showlist);

  add_cmd ("signal-thread", class_run, set_sig_thread_cmd,
    "Set the thread that gdb thinks is the libc signal thread.\nThis thread is run when delivering a signal to a non-stopped process.",

    &setlist);
  add_alias_cmd ("sigthread", "signal-thread", class_run, 1, &setlist);
  add_cmd ("signal-thread", no_class, show_sig_thread_cmd,
    "Set the thread that gdb thinks is the libc signal thread.",
    &showlist);
  add_alias_cmd ("sigthread", "signal-thread", no_class, 1, &showlist);

  add_cmd ("stopped", class_run, set_stopped_cmd,
    "Set whether gdb thinks the inferior process is stopped as with SIGSTOP.\nStopped process will be continued by sending them a signal.",


    &setlist);
  add_cmd ("stopped", no_class, show_signals_cmd,
    "Show whether gdb thinks the inferior process is stopped as with SIGSTOP.",

    &showlist);

  add_cmd ("exceptions", class_run, set_exceptions_cmd,
    "Set whether exceptions in the inferior process will be trapped.\nWhen exceptions are turned off, neither breakpoints nor single-stepping\nwill work.",


    &setlist);

  add_alias_cmd ("exc", "exceptions", class_run, 1, &setlist);
  add_cmd ("exceptions", no_class, show_exceptions_cmd,
    "Show whether exceptions in the inferior process will be trapped.",
    &showlist);

  add_prefix_cmd ("task", no_class, set_task_cmd,
    "Command prefix for setting task attributes.",
    &set_task_cmd_list, "set task ", 0, &setlist);
  add_prefix_cmd ("task", no_class, show_task_cmd,
    "Command prefix for showing task attributes.",
    &show_task_cmd_list, "show task ", 0, &showlist);

  add_cmd ("pause", class_run, set_task_pause_cmd,
    "Set whether the task is suspended while gdb has control.\nA value of \"on\" takes effect immediately, otherwise nothing happens\nuntil the next time the program is continued.\nWhen setting this to \"off\", \"set thread default pause on\" can be\nused to pause individual threads by default instead.",




    &set_task_cmd_list);
  add_cmd ("pause", no_class, show_task_pause_cmd,
    "Show whether the task is suspended while gdb has control.",
    &show_task_cmd_list);

  add_cmd ("detach-suspend-count", class_run, set_task_detach_sc_cmd,
    "Set the suspend count will leave on the thread when detaching.",
    &set_task_cmd_list);
  add_cmd ("detach-suspend-count", no_class, show_task_detach_sc_cmd,
    "Show the suspend count will leave on the thread when detaching.",
    &show_task_cmd_list);

  add_cmd ("exception-port", no_class, set_task_exc_port_cmd,
    "Set the task exception port to which we forward exceptions.\nThe argument should be the value of the send right in the task.",

    &set_task_cmd_list);
  add_alias_cmd ("excp", "exception-port", no_class, 1, &set_task_cmd_list);
  add_alias_cmd ("exc-port", "exception-port", no_class, 1,
   &set_task_cmd_list);



  add_cmd ("noninvasive", no_class, set_noninvasive_cmd,
    "Set task options so that we interfere as little as possible.\nThis is the same as setting `task pause', `exceptions', and\n`signals' to the opposite value.",


    &setlist);


  add_cmd ("send-rights", class_info, info_send_rights_cmd,
    "Show information about the task's send rights",
    &infolist);
  add_cmd ("receive-rights", class_info, info_recv_rights_cmd,
    "Show information about the task's receive rights",
    &infolist);
  add_cmd ("port-rights", class_info, info_port_rights_cmd,
    "Show information about the task's port rights",
    &infolist);
  add_cmd ("port-sets", class_info, info_port_sets_cmd,
    "Show information about the task's port sets",
    &infolist);
  add_cmd ("dead-names", class_info, info_dead_names_cmd,
    "Show information about the task's dead names",
    &infolist);
  add_info_alias ("ports", "port-rights", 1);
  add_info_alias ("port", "port-rights", 1);
  add_info_alias ("psets", "port-sets", 1);
}
