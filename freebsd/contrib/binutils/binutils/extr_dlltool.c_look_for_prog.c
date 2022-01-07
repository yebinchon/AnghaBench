
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 char const* EXECUTABLE_SUFFIX ;
 int _ (char*) ;
 int free (char*) ;
 int inform (int ,char*) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strcat (char*,char const*) ;
 int * strchr (char*,char) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static char *
look_for_prog (const char *prog_name, const char *prefix, int end_prefix)
{
  struct stat s;
  char *cmd;

  cmd = xmalloc (strlen (prefix)
   + strlen (prog_name)



   + 10);
  strcpy (cmd, prefix);

  sprintf (cmd + end_prefix, "%s", prog_name);

  if (strchr (cmd, '/') != ((void*)0))
    {
      int found;

      found = (stat (cmd, &s) == 0



        );

      if (! found)
 {

   inform (_("Tried file: %s"), cmd);
   free (cmd);
   return ((void*)0);
 }
    }


  inform (_("Using file: %s"), cmd);

  return cmd;
}
