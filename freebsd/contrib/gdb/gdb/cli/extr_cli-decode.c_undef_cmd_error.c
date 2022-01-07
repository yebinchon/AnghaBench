
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*,char*,char*,int,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
undef_cmd_error (char *cmdtype, char *q)
{
  error ("Undefined %scommand: \"%s\".  Try \"help%s%.*s\".",
  cmdtype,
  q,
  *cmdtype ? " " : "",
  (int) strlen (cmdtype) - 1,
  cmdtype);
}
