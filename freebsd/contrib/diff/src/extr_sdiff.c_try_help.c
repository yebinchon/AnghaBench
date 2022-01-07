
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_TROUBLE ;
 char* _ (char const*) ;
 int abort () ;
 int error (int ,int ,char*,char const*) ;
 char* program_name ;

__attribute__((used)) static void
try_help (char const *reason_msgid, char const *operand)
{
  if (reason_msgid)
    error (0, 0, _(reason_msgid), operand);
  error (EXIT_TROUBLE, 0, _("Try `%s --help' for more information."),
  program_name);
  abort ();
}
