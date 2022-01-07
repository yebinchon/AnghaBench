
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int member_2; int const member_1; } ;


 int EOF ;
 int FOPEN_WB ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LOCALEDIR ;
 int PACKAGE ;
 int _ (char*) ;
 int abfd ;
 int base1 ;
 int base2 ;
 int bfd_check_format_matches (int ,int ,char***) ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 int bfd_fatal (char*) ;
 scalar_t__ bfd_get_error () ;
 int bfd_nonfatal (char*) ;
 int bfd_object ;
 int bfd_openr (char*,int ) ;
 int bindtextdomain (int ,int ) ;
 int coff_grok (int ) ;
 int debug ;
 int exit (int) ;
 int expandargv (int*,char***) ;
 int fatal (int ,...) ;
 int file ;
 int fopen (char*,int ) ;
 int free (char**) ;
 int getopt_long (int,char**,char*,struct option*,int*) ;
 int list_matching_formats (char**) ;

 int noprescan ;
 int optind ;
 int prescan (int ) ;
 int print_version (char*) ;
 int printf (char*,int,int) ;
 char* program_name ;
 int quick ;
 int setlocale (int ,char*) ;
 int show_usage (int ,int) ;
 int stderr ;
 int stdout ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int textdomain (int ) ;
 int tree ;
 int wr_module (int ) ;
 char* xmalloc (int) ;
 int xmalloc_set_program_name (char*) ;

int
main (int ac, char **av)
{
  int opt;
  static struct option long_options[] =
  {
    {"debug", 128, 0, 'd'},
    {"quick", 128, 0, 'q'},
    {"noprescan", 128, 0, 'n'},
    {"help", 128, 0, 'h'},
    {"version", 128, 0, 'V'},
    {((void*)0), 128, 0, 0}
  };
  char **matching;
  char *input_file;
  char *output_file;







  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  program_name = av[0];
  xmalloc_set_program_name (program_name);

  expandargv (&ac, &av);

  while ((opt = getopt_long (ac, av, "dHhVvqn", long_options,
        (int *) ((void*)0)))
  != EOF)
    {
      switch (opt)
 {
 case 'q':
   quick = 1;
   break;
 case 'n':
   noprescan = 1;
   break;
 case 'd':
   debug = 1;
   break;
 case 'H':
 case 'h':
   show_usage (stdout, 0);

 case 'v':
 case 'V':
   print_version ("srconv");
   exit (0);

 case 0:
   break;
 default:
   show_usage (stderr, 1);

 }
    }


  output_file = ((void*)0);
  if (optind < ac)
    {
      input_file = av[optind];
      ++optind;
      if (optind < ac)
 {
   output_file = av[optind];
   ++optind;
   if (optind < ac)
     show_usage (stderr, 1);
   if (strcmp (input_file, output_file) == 0)
     {
       fatal (_("input and output files must be different"));
     }
 }
    }
  else
    input_file = 0;

  if (!input_file)
    {
      fatal (_("no input file specified"));
    }

  if (!output_file)
    {



      int len = strlen (input_file);

      output_file = xmalloc (len + 5);
      strcpy (output_file, input_file);

      if (len > 3
   && output_file[len - 2] == '.'
   && output_file[len - 1] == 'o')
 {
   output_file[len] = 'b';
   output_file[len + 1] = 'j';
   output_file[len + 2] = 0;
 }
      else
 {
   strcat (output_file, ".obj");
 }
    }

  abfd = bfd_openr (input_file, 0);

  if (!abfd)
    bfd_fatal (input_file);

  if (!bfd_check_format_matches (abfd, bfd_object, &matching))
    {
      bfd_nonfatal (input_file);

      if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
 {
   list_matching_formats (matching);
   free (matching);
 }
      exit (1);
    }

  file = fopen (output_file, FOPEN_WB);

  if (!file)
    fatal (_("unable to open output file %s"), output_file);

  if (debug)
    printf ("ids %d %d\n", base1, base2);

  tree = coff_grok (abfd);

  if (!noprescan)
    prescan (tree);

  wr_module (tree);
  return 0;
}
