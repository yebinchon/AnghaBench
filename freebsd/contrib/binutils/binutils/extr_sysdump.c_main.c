
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int member_2; int const member_1; } ;


 int EOF ;
 int FOPEN_RB ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LOCALEDIR ;
 int PACKAGE ;
 int _ (char*) ;
 int bindtextdomain (int ,int ) ;
 int exit (int ) ;
 int expandargv (int*,char***) ;
 int fatal (int ,...) ;
 int file ;
 int fopen (char*,int ) ;
 int getopt_long (int,char**,char*,struct option*,int*) ;
 int module () ;

 int optind ;
 int print_version (char*) ;
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
  char *input_file = ((void*)0);
  int opt;
  static struct option long_options[] =
  {
    {"help", 128, 0, 'h'},
    {"version", 128, 0, 'V'},
    {((void*)0), 128, 0, 0}
  };







  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  program_name = av[0];
  xmalloc_set_program_name (program_name);

  expandargv (&ac, &av);

  while ((opt = getopt_long (ac, av, "HhVv", long_options, (int *) ((void*)0))) != EOF)
    {
      switch (opt)
 {
 case 'H':
 case 'h':
   show_usage (stdout, 0);

 case 'v':
 case 'V':
   print_version ("sysdump");
   exit (0);

 case 0:
   break;
 default:
   show_usage (stderr, 1);

 }
    }



  if (optind < ac)
    input_file = av[optind];

  if (!input_file)
    fatal (_("no input file specified"));

  file = fopen (input_file, FOPEN_RB);

  if (!file)
    fatal (_("cannot open input file %s"), input_file);

  module ();
  return 0;
}
