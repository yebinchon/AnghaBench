
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _ (char*) ;
 int bfd_error_system_call ;
 int bfd_set_error (int ) ;
 int einfo (int ,char const*) ;
 int * ldfile_find_command_file (char const*,char*) ;
 char const* ldfile_input_filename ;
 int lex_push_file (int *,char const*) ;
 int lineno ;
 int * saved_script_handle ;

void
ldfile_open_command_file (const char *name)
{
  FILE *ldlex_input_stack;
  ldlex_input_stack = ldfile_find_command_file (name, "");

  if (ldlex_input_stack == ((void*)0))
    {
      bfd_set_error (bfd_error_system_call);
      einfo (_("%P%F: cannot open linker script file %s: %E\n"), name);
    }

  lex_push_file (ldlex_input_stack, name);

  ldfile_input_filename = name;
  lineno = 1;

  saved_script_handle = ldlex_input_stack;
}
