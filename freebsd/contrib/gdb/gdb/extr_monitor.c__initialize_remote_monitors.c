
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int hashmark ;
 int init_base_monitor_ops () ;
 int monitor_debug_p ;
 int no_class ;
 int setdebuglist ;
 int setlist ;
 int showdebuglist ;
 int showlist ;
 int var_boolean ;
 int var_zinteger ;

void
_initialize_remote_monitors (void)
{
  init_base_monitor_ops ();
  add_show_from_set (add_set_cmd ("hash", no_class, var_boolean,
      (char *) &hashmark,
      "Set display of activity while downloading a file.\nWhen enabled, a hashmark \'#\' is displayed.",

      &setlist),
       &showlist);

  add_show_from_set
    (add_set_cmd ("monitor", no_class, var_zinteger,
    (char *) &monitor_debug_p,
    "Set debugging of remote monitor communication.\nWhen enabled, communication between GDB and the remote monitor\nis displayed.", &setdebuglist),


     &showdebuglist);
}
