
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ bfd_boolean ;
struct TYPE_3__ {scalar_t__ has_arg; char* name; } ;
struct TYPE_4__ {char* doc; char shortopt; scalar_t__ control; char* arg; TYPE_1__ opt; } ;


 scalar_t__ EXACTLY_TWO_DASHES ;
 scalar_t__ FALSE ;
 scalar_t__ NO_HELP ;
 unsigned int OPTION_COUNT ;
 char* REPORT_BUGS_TO ;
 scalar_t__ TRUE ;
 scalar_t__ TWO_DASHES ;
 char* _ (char*) ;
 char** bfd_target_list () ;
 int free (char const**) ;
 TYPE_2__* ld_options ;
 int ldemul_list_emulation_options (int ) ;
 int ldemul_list_emulations (int ) ;
 scalar_t__ optional_argument ;
 int printf (char*,...) ;
 char* program_name ;
 int putchar (char) ;
 int stdout ;
 int strlen (char*) ;

__attribute__((used)) static void
help (void)
{
  unsigned i;
  const char **targets, **pp;
  int len;

  printf (_("Usage: %s [options] file...\n"), program_name);

  printf (_("Options:\n"));
  for (i = 0; i < OPTION_COUNT; i++)
    {
      if (ld_options[i].doc != ((void*)0))
 {
   bfd_boolean comma;
   unsigned j;

   printf ("  ");

   comma = FALSE;
   len = 2;

   j = i;
   do
     {
       if (ld_options[j].shortopt != '\0'
    && ld_options[j].control != NO_HELP)
  {
    printf ("%s-%c", comma ? ", " : "", ld_options[j].shortopt);
    len += (comma ? 2 : 0) + 2;
    if (ld_options[j].arg != ((void*)0))
      {
        if (ld_options[j].opt.has_arg != optional_argument)
   {
     printf (" ");
     ++len;
   }
        printf ("%s", _(ld_options[j].arg));
        len += strlen (_(ld_options[j].arg));
      }
    comma = TRUE;
  }
       ++j;
     }
   while (j < OPTION_COUNT && ld_options[j].doc == ((void*)0));

   j = i;
   do
     {
       if (ld_options[j].opt.name != ((void*)0)
    && ld_options[j].control != NO_HELP)
  {
    int two_dashes =
      (ld_options[j].control == TWO_DASHES
       || ld_options[j].control == EXACTLY_TWO_DASHES);

    printf ("%s-%s%s",
     comma ? ", " : "",
     two_dashes ? "-" : "",
     ld_options[j].opt.name);
    len += ((comma ? 2 : 0)
     + 1
     + (two_dashes ? 1 : 0)
     + strlen (ld_options[j].opt.name));
    if (ld_options[j].arg != ((void*)0))
      {
        printf (" %s", _(ld_options[j].arg));
        len += 1 + strlen (_(ld_options[j].arg));
      }
    comma = TRUE;
  }
       ++j;
     }
   while (j < OPTION_COUNT && ld_options[j].doc == ((void*)0));

   if (len >= 30)
     {
       printf ("\n");
       len = 0;
     }

   for (; len < 30; len++)
     putchar (' ');

   printf ("%s\n", _(ld_options[i].doc));
 }
    }
  printf (_("  @FILE"));
  for (len = strlen ("  @FILE"); len < 30; len++)
    putchar (' ');
  printf (_("Read options from FILE\n"));




  printf (_("%s: supported targets:"), program_name);
  targets = bfd_target_list ();
  for (pp = targets; *pp != ((void*)0); pp++)
    printf (" %s", *pp);
  free (targets);
  printf ("\n");


  printf (_("%s: supported emulations: "), program_name);
  ldemul_list_emulations (stdout);
  printf ("\n");


  printf (_("%s: emulation specific options:\n"), program_name);
  ldemul_list_emulation_options (stdout);
  printf ("\n");

  if (REPORT_BUGS_TO[0])
    printf (_("Report bugs to %s\n"), REPORT_BUGS_TO);
}
