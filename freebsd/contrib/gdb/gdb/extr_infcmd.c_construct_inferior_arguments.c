
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;


 scalar_t__ STARTUP_WITH_SHELL ;
 int error (char*) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ xmalloc (int) ;

char *
construct_inferior_arguments (struct gdbarch *gdbarch, int argc, char **argv)
{
  char *result;

  if (STARTUP_WITH_SHELL)
    {



      char *special = "\"!#$&*()\\|[]{}<>?'\"`~^; \t\n";
      int i;
      int length = 0;
      char *out, *cp;


      for (i = 0; i < argc; ++i)
 length += 2 * strlen (argv[i]) + 1 + 2 * (argv[i][0] == '\0');

      result = (char *) xmalloc (length);
      out = result;

      for (i = 0; i < argc; ++i)
 {
   if (i > 0)
     *out++ = ' ';


   if (argv[i][0] == '\0')
     {
       *out++ = '\'';
       *out++ = '\'';
     }
   else
     {
       for (cp = argv[i]; *cp; ++cp)
  {
    if (strchr (special, *cp) != ((void*)0))
      *out++ = '\\';
    *out++ = *cp;
  }
     }
 }
      *out = '\0';
    }
  else
    {


      int i;
      int length = 0;

      for (i = 0; i < argc; ++i)
 {
   char *cp = strchr (argv[i], ' ');
   if (cp == ((void*)0))
     cp = strchr (argv[i], '\t');
   if (cp == ((void*)0))
     cp = strchr (argv[i], '\n');
   if (cp != ((void*)0))
     error ("can't handle command-line argument containing whitespace");
   length += strlen (argv[i]) + 1;
 }

      result = (char *) xmalloc (length);
      result[0] = '\0';
      for (i = 0; i < argc; ++i)
 {
   if (i > 0)
     strcat (result, " ");
   strcat (result, argv[i]);
 }
    }

  return result;
}
