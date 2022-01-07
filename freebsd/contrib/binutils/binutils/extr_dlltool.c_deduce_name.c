
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* look_for_prog (char const*,char*,int) ;
 char* program_name ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *
deduce_name (const char *prog_name)
{
  char *cmd;
  char *dash, *slash, *cp;

  dash = ((void*)0);
  slash = ((void*)0);
  for (cp = program_name; *cp != '\0'; ++cp)
    {
      if (*cp == '-')
 dash = cp;
      if (



   *cp == '/')
 {
   slash = cp;
   dash = ((void*)0);
 }
    }

  cmd = ((void*)0);

  if (dash != ((void*)0))
    {


      cmd = look_for_prog (prog_name, program_name, dash - program_name + 1);
    }

  if (slash != ((void*)0) && cmd == ((void*)0))
    {


      cmd = look_for_prog (prog_name, program_name, slash - program_name + 1);
    }

  if (cmd == ((void*)0))
    {

      cmd = xstrdup (prog_name);
    }

  return cmd;
}
