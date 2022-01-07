
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 struct cmd_list_element* add_cmd (char*,int ,int ,char*,int *) ;
 int add_com (char*,int ,int ,char*) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int add_target (int *) ;
 int class_files ;
 int class_support ;
 int cmdlist ;
 int dbx_commands ;
 int exec_file_command ;
 int exec_ops ;
 int file_command ;
 int filename_completer ;
 int init_exec_ops () ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;
 int set_section_command ;
 int setlist ;
 int showlist ;
 int var_boolean ;
 int write_files ;

void
_initialize_exec (void)
{
  struct cmd_list_element *c;

  init_exec_ops ();

  if (!dbx_commands)
    {
      c = add_cmd ("file", class_files, file_command,
     "Use FILE as program to be debugged.\nIt is read for its symbols, for getting the contents of pure memory,\nand it is the program executed when you use the `run' command.\nIf FILE cannot be found as specified, your execution directory path\n($PATH) is searched for a command of that name.\nNo arg means to have no executable file and no symbols.", &cmdlist);





      set_cmd_completer (c, filename_completer);
    }

  c = add_cmd ("exec-file", class_files, exec_file_command,
        "Use FILE as program for getting contents of pure memory.\nIf FILE cannot be found as specified, your execution directory path\nis searched for a command of that name.\nNo arg means have no executable file.", &cmdlist);



  set_cmd_completer (c, filename_completer);

  add_com ("section", class_files, set_section_command,
    "Change the base address of section SECTION of the exec file to ADDR.\nThis can be used if the exec file does not contain section addresses,\n(such as in the a.out format), or when the addresses specified in the\nfile itself are wrong.  Each section must be changed separately.  The\n``info files'' command lists all the sections and their addresses.");





  add_show_from_set
    (add_set_cmd ("write", class_support, var_boolean, (char *) &write_files,
    "Set writing into executable and core files.",
    &setlist),
     &showlist);

  add_target (&exec_ops);
}
