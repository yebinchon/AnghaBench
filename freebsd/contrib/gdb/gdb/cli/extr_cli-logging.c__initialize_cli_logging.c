
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_cmd (char*,int ,int ,char*,struct cmd_list_element**) ;
 int add_prefix_cmd (char*,int ,int ,char*,struct cmd_list_element**,char*,int ,int *) ;
 int add_setshow_boolean_cmd (char*,int ,int *,char*,char*,int *,int *,struct cmd_list_element**,struct cmd_list_element**) ;
 int add_setshow_cmd (char*,int ,int ,int *,char*,char*,int *,int *,struct cmd_list_element**,struct cmd_list_element**) ;
 int class_support ;
 int logging_filename ;
 int logging_overwrite ;
 int logging_redirect ;
 int set_logging_command ;
 int set_logging_off ;
 int set_logging_on ;
 int setlist ;
 int show_logging_command ;
 int showlist ;
 int var_filename ;
 int xstrdup (char*) ;

void
_initialize_cli_logging (void)
{
  static struct cmd_list_element *set_logging_cmdlist, *show_logging_cmdlist;


  add_prefix_cmd ("logging", class_support, set_logging_command,
    "Set logging options", &set_logging_cmdlist,
    "set logging ", 0, &setlist);
  add_prefix_cmd ("logging", class_support, show_logging_command,
    "Show logging options", &show_logging_cmdlist,
    "show logging ", 0, &showlist);
  add_setshow_boolean_cmd ("overwrite", class_support, &logging_overwrite,
      "Set whether logging overwrites or appends "
      "to the log file.\n",
      "Show whether logging overwrites or appends "
      "to the log file.\n",
      ((void*)0), ((void*)0), &set_logging_cmdlist, &show_logging_cmdlist);
  add_setshow_boolean_cmd ("redirect", class_support, &logging_redirect,
      "Set the logging output mode.\n"
      "If redirect is off, output will go to both the "
      "screen and the log file.\n"
      "If redirect is on, output will go only to the log "
      "file.",
      "Show the logging output mode.\n"
      "If redirect is off, output will go to both the "
      "screen and the log file.\n"
      "If redirect is on, output will go only to the log "
      "file.",
      ((void*)0), ((void*)0), &set_logging_cmdlist, &show_logging_cmdlist);
  add_setshow_cmd ("file", class_support, var_filename, &logging_filename,
     "Set the current logfile.", "Show the current logfile.",
     ((void*)0), ((void*)0), &set_logging_cmdlist, &show_logging_cmdlist);
  add_cmd ("on", class_support, set_logging_on,
    "Enable logging.", &set_logging_cmdlist);
  add_cmd ("off", class_support, set_logging_off,
    "Disable logging.", &set_logging_cmdlist);

  logging_filename = xstrdup ("gdb.txt");
}
