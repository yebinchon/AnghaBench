
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum demangling_styles { ____Placeholder_demangling_styles } demangling_styles ;


 int END_PROGRESS (char*) ;
 int EOF ;
 int LC_COLLATE ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LOCALEDIR ;

 int PACKAGE ;
 int PROGRESS (int) ;
 int START_PROGRESS (char*,int ) ;
 int _ (char*) ;
 int bfd_init () ;
 int bindtextdomain (int ,int ) ;
 int cplus_demangle_name_to_style (char*) ;
 int cplus_demangle_set_style (int) ;
 int display_file (char*) ;
 int do_demangle ;
 int dynamic ;
 int environ ;
 int exit (int) ;
 int expandargv (int*,char***) ;
 int external_only ;
 int fatal (int ,...) ;
 int filename_per_file ;
 int filename_per_symbol ;
 int getopt_long (int,char**,char*,int ,int*) ;
 int line_numbers ;
 int long_options ;
 int no_sort ;
 int non_fatal (int ,...) ;
 char* optarg ;
 int optind ;
 int print_armap ;
 int print_debug_syms ;
 int print_size ;
 int print_version (char*) ;
 char* program_name ;
 int reverse_sort ;
 scalar_t__ sbrk (int ) ;
 int set_default_bfd_target () ;
 int set_output_format (char*) ;
 int set_print_radix (char*) ;
 int setlocale (int ,char*) ;
 scalar_t__ show_stats ;
 int show_version ;
 scalar_t__ sort_by_size ;
 int sort_numerically ;
 int stderr ;
 int stdout ;
 int strcmp (char*,char*) ;
 char* target ;
 int textdomain (int ) ;
 int undefined_only ;
 int unknown_demangling ;
 int usage (int ,int) ;
 int xmalloc_set_program_name (char*) ;

int
main (int argc, char **argv)
{
  int c;
  int retval;
  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  program_name = *argv;
  xmalloc_set_program_name (program_name);

  START_PROGRESS (program_name, 0);

  expandargv (&argc, &argv);

  bfd_init ();
  set_default_bfd_target ();

  while ((c = getopt_long (argc, argv, "aABCDef:gHhlnopPrSst:uvVvX:",
      long_options, (int *) 0)) != EOF)
    {
      switch (c)
 {
 case 'a':
   print_debug_syms = 1;
   break;
 case 'A':
 case 'o':
   filename_per_symbol = 1;
   break;
 case 'B':
   set_output_format ("bsd");
   break;
 case 'C':
   do_demangle = 1;
   if (optarg != ((void*)0))
     {
       enum demangling_styles style;

       style = cplus_demangle_name_to_style (optarg);
       if (style == unknown_demangling)
  fatal (_("unknown demangling style `%s'"),
         optarg);

       cplus_demangle_set_style (style);
     }
   break;
 case 'D':
   dynamic = 1;
   break;
 case 'e':

   break;
 case 'f':
   set_output_format (optarg);
   break;
 case 'g':
   external_only = 1;
   break;
 case 'H':
 case 'h':
   usage (stdout, 0);
 case 'l':
   line_numbers = 1;
   break;
 case 'n':
 case 'v':
   sort_numerically = 1;
   break;
 case 'p':
   no_sort = 1;
   break;
 case 'P':
   set_output_format ("posix");
   break;
 case 'r':
   reverse_sort = 1;
   break;
 case 's':
   print_armap = 1;
   break;
 case 'S':
   print_size = 1;
   break;
 case 't':
   set_print_radix (optarg);
   break;
 case 'u':
   undefined_only = 1;
   break;
 case 'V':
   show_version = 1;
   break;
 case 'X':







   if (strcmp (optarg, "32_64") != 0)
     fatal (_("Only -X 32_64 is supported"));
   break;

 case 128:
   target = optarg;
   break;

 case 0:
   break;

 default:
   usage (stderr, 1);
 }
    }

  if (show_version)
    print_version ("nm");

  if (sort_by_size && undefined_only)
    {
      non_fatal (_("Using the --size-sort and --undefined-only options together"));
      non_fatal (_("will produce no output, since undefined symbols have no size."));
      return 0;
    }


  if (optind == argc)
    return !display_file ("a.out");

  retval = 0;

  if (argc - optind > 1)
    filename_per_file = 1;


  while (optind < argc)
    {
      PROGRESS (1);
      if (!display_file (argv[optind++]))
 retval++;
    }

  END_PROGRESS (program_name);
  exit (retval);
  return retval;
}
