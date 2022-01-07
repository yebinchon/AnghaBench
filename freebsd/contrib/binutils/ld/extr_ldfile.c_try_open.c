
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _ (char*) ;
 int * fopen (char const*,char*) ;
 int info_msg (int ,char const*) ;
 int sprintf (char*,char*,char const*,char const*) ;
 scalar_t__ trace_file_tries ;

__attribute__((used)) static FILE *
try_open (const char *name, const char *exten)
{
  FILE *result;
  char buff[1000];

  result = fopen (name, "r");

  if (trace_file_tries)
    {
      if (result == ((void*)0))
 info_msg (_("cannot find script file %s\n"), name);
      else
 info_msg (_("opened script file %s\n"), name);
    }

  if (result != ((void*)0))
    return result;

  if (*exten)
    {
      sprintf (buff, "%s%s", name, exten);
      result = fopen (buff, "r");

      if (trace_file_tries)
 {
   if (result == ((void*)0))
     info_msg (_("cannot find script file %s\n"), buff);
   else
     info_msg (_("opened script file %s\n"), buff);
 }
    }

  return result;
}
