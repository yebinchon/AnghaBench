
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 struct cmd_list_element* add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (struct cmd_list_element*,int *) ;
 int filename_completer ;
 int no_class ;
 int procfs_filename ;
 int procfs_trace ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;
 int set_cmd_sfunc (struct cmd_list_element*,int ) ;
 int set_procfs_file_cmd ;
 int set_procfs_trace_cmd ;
 int setlist ;
 int showlist ;
 int var_boolean ;
 int var_filename ;

void
_initialize_proc_api (void)
{
  struct cmd_list_element *c;

  c = add_set_cmd ("procfs-trace", no_class,
     var_boolean, (char *) &procfs_trace,
     "Set tracing for /proc api calls.\n", &setlist);

  add_show_from_set (c, &showlist);
  set_cmd_sfunc (c, set_procfs_trace_cmd);
  set_cmd_completer (c, filename_completer);

  c = add_set_cmd ("procfs-file", no_class, var_filename,
     (char *) &procfs_filename,
     "Set filename for /proc tracefile.\n", &setlist);

  add_show_from_set (c, &showlist);
  set_cmd_sfunc (c, set_procfs_file_cmd);
}
