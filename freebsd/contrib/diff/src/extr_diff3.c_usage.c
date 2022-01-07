
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char const* const) ;
 char** option_help_msgid ;
 int printf (char*,char*,...) ;
 char* program_name ;
 int putchar (char) ;

__attribute__((used)) static void
usage (void)
{
  char const * const *p;

  printf (_("Usage: %s [OPTION]... MYFILE OLDFILE YOURFILE\n"),
   program_name);
  printf ("%s\n\n", _("Compare three files line by line."));
  for (p = option_help_msgid; *p; p++)
    if (**p)
      printf ("  %s\n", _(*p));
    else
      putchar ('\n');
  printf ("\n%s\n%s\n\n%s\n",
   _("If a FILE is `-', read standard input."),
   _("Exit status is 0 if successful, 1 if conflicts, 2 if trouble."),
   _("Report bugs to <bug-gnu-utils@gnu.org>."));
}
