
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 struct cmd_list_element* add_cmd (char*,int ,int ,char*,int *) ;
 struct cmd_list_element* add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (struct cmd_list_element*,int *) ;
 int class_files ;
 int cmdlist ;
 int core_file_command ;
 int filename_completer ;
 char* getenv (char*) ;
 int gnutarget_string ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;
 int set_cmd_sfunc (struct cmd_list_element*,int ) ;
 int set_gnutarget (char*) ;
 int set_gnutarget_command ;
 int setlist ;
 int showlist ;
 int var_string_noescape ;

void
_initialize_core (void)
{
  struct cmd_list_element *c;
  c = add_cmd ("core-file", class_files, core_file_command,
        "Use FILE as core dump for examining memory and registers.\nNo arg means have no core file.  This command has been superseded by the\n`target core' and `detach' commands.", &cmdlist);


  set_cmd_completer (c, filename_completer);

  c = add_set_cmd ("gnutarget", class_files, var_string_noescape,
     (char *) &gnutarget_string,
     "Set the current BFD target.\nUse `set gnutarget auto' to specify automatic detection.",

     &setlist);
  set_cmd_sfunc (c, set_gnutarget_command);
  add_show_from_set (c, &showlist);

  if (getenv ("GNUTARGET"))
    set_gnutarget (getenv ("GNUTARGET"));
  else
    set_gnutarget ("auto");
}
