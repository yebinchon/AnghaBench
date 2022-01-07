
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGPHOTON ;
 int SIGSELECT ;
 int add_core_fns (int *) ;
 int add_setshow_cmd (char*,int ,int ,int *,char*,char*,int *,int *,int *,int *) ;
 int class_maintenance ;
 int nto_internal_debugging ;
 int regset_core_fns ;
 int setdebuglist ;
 int showdebuglist ;
 int signal_pass_update (int ,int) ;
 int signal_print_update (int ,int ) ;
 int signal_stop_update (int ,int ) ;
 int target_signal_from_name (char*) ;
 int var_zinteger ;

void
_initialize_nto_tdep (void)
{
  add_setshow_cmd ("nto-debug", class_maintenance, var_zinteger,
     &nto_internal_debugging, "Set QNX NTO internal debugging.\nWhen non-zero, nto specific debug info is\ndisplayed. Different information is displayed\nfor different positive values.", "Show QNX NTO internal debugging.\n",



     ((void*)0), ((void*)0), &setdebuglist, &showdebuglist);



  signal_stop_update (target_signal_from_name ("SIG45"), 0);
  signal_print_update (target_signal_from_name ("SIG45"), 0);
  signal_pass_update (target_signal_from_name ("SIG45"), 1);
  add_core_fns (&regset_core_fns);
}
