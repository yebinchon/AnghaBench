
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int member_2; int const member_1; } ;
struct coff_ofile {int dummy; } ;
typedef int bfd ;


 int EOF ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LOCALEDIR ;
 int PACKAGE ;
 int _ (char*) ;
 int bfd_check_format_matches (int *,int ,char***) ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 int bfd_fatal (char*) ;
 scalar_t__ bfd_get_error () ;
 int bfd_nonfatal (char*) ;
 int bfd_object ;
 int * bfd_openr (char*,int ) ;
 int bindtextdomain (int ,int ) ;
 int coff_dump (struct coff_ofile*) ;
 struct coff_ofile* coff_grok (int *) ;
 int exit (int) ;
 int expandargv (int*,char***) ;
 int fatal (int ) ;
 int free (char**) ;
 int getopt_long (int,char**,char*,struct option*,int*) ;
 int list_matching_formats (char**) ;

 int optind ;
 int print_version (char*) ;
 int printf (char*) ;
 char* program_name ;
 int setlocale (int ,char*) ;
 int show_usage (int ,int) ;
 int stderr ;
 int stdout ;
 int textdomain (int ) ;
 int xmalloc_set_program_name (char*) ;

int
main (int ac, char **av)
{
  bfd *abfd;
  struct coff_ofile *tree;
  char **matching;
  char *input_file = ((void*)0);
  int opt;
  static struct option long_options[] =
    {
      { "help", 128, 0, 'h' },
      { "version", 128, 0, 'V' },
      { ((void*)0), 128, 0, 0 }
    };







  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  program_name = av[0];
  xmalloc_set_program_name (program_name);

  expandargv (&ac, &av);

  while ((opt = getopt_long (ac, av, "HhVv", long_options,
        (int *) ((void*)0)))
  != EOF)
    {
      switch (opt)
 {
 case 'H':
 case 'h':
   show_usage (stdout, 0);
   break;
 case 'v':
 case 'V':
   print_version ("coffdump");
   exit (0);
 case 0:
   break;
 default:
   show_usage (stderr, 1);
   break;
 }
    }

  if (optind < ac)
    {
      input_file = av[optind];
    }

  if (!input_file)
    fatal (_("no input file specified"));

  abfd = bfd_openr (input_file, 0);

  if (!abfd)
    bfd_fatal (input_file);

  if (! bfd_check_format_matches (abfd, bfd_object, &matching))
    {
      bfd_nonfatal (input_file);

      if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
 {
   list_matching_formats (matching);
   free (matching);
 }
      exit (1);
    }

  tree = coff_grok (abfd);

  coff_dump (tree);
  printf ("\n");

  return 0;
}
