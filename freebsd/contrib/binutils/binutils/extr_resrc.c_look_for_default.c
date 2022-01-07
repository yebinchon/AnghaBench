
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int FILE ;


 char* DEFAULT_PREPROCESSOR ;
 int EXECUTABLE_SUFFIX ;
 char* _ (char*) ;
 int * cpp_pipe ;
 scalar_t__ filename_need_quotes (char const*) ;
 int fprintf (int ,char*,char*) ;
 int * open_input_stream (char*) ;
 int sprintf (char*,char*,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 char* strcat (char*,int ) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char const*) ;
 scalar_t__ verbose ;

__attribute__((used)) static FILE *
look_for_default (char *cmd, const char *prefix, int end_prefix,
    const char *preprocargs, const char *filename)
{
  char *space;
  int found;
  struct stat s;
  const char *fnquotes = (filename_need_quotes (filename) ? "\"" : "");

  strcpy (cmd, prefix);

  sprintf (cmd + end_prefix, "%s", DEFAULT_PREPROCESSOR);
  space = strchr (cmd + end_prefix, ' ');
  if (space)
    *space = 0;

  if (



      strchr (cmd, '/'))
    {
      found = (stat (cmd, &s) == 0



        );

      if (! found)
 {
   if (verbose)
     fprintf (stderr, _("Tried `%s'\n"), cmd);
   return ((void*)0);
 }
    }

  strcpy (cmd, prefix);

  sprintf (cmd + end_prefix, "%s %s %s%s%s",
    DEFAULT_PREPROCESSOR, preprocargs, fnquotes, filename, fnquotes);

  if (verbose)
    fprintf (stderr, _("Using `%s'\n"), cmd);

  cpp_pipe = open_input_stream (cmd);
  return cpp_pipe;
}
