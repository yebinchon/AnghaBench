
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUCCESS_EXIT_CODE ;
 char* _ (char*) ;
 int exit (int ) ;
 int fnotice (int ,char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int stdout ;
 char* version_string ;

__attribute__((used)) static void
print_version (void)
{
  fnotice (stdout, "gcov (GCC) %s\n", version_string);
  fprintf (stdout, "Copyright %s 2006 Free Software Foundation, Inc.\n",
    _("(C)"));
  fnotice (stdout, "%s",
    _("This is free software; see the source for copying conditions.\n"
      "There is NO warranty; not even for MERCHANTABILITY or \n"
      "FITNESS FOR A PARTICULAR PURPOSE.\n\n"));
  exit (SUCCESS_EXIT_CODE);
}
