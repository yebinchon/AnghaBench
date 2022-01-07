
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum demangling_styles { ____Placeholder_demangling_styles } demangling_styles ;


 int EOF ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LOCALEDIR ;
 int PACKAGE ;
 void* TRUE ;
 int _ (char*) ;
 char** addr ;
 void* base_names ;
 int bfd_init () ;
 int bindtextdomain (int ,int ) ;
 int cplus_demangle_name_to_style (char*) ;
 int cplus_demangle_set_style (int) ;
 void* do_demangle ;
 int expandargv (int*,char***) ;
 int fatal (int ,char*) ;
 int getopt_long (int,char**,char*,int ,int*) ;
 int long_options ;
 int naddr ;
 char* optarg ;
 int optind ;
 int print_version (char*) ;
 int process_file (char const*,char const*,char*) ;
 char* program_name ;
 int set_default_bfd_target () ;
 int setlocale (int ,char*) ;
 int stderr ;
 int stdout ;
 int textdomain (int ) ;
 int unknown_demangling ;
 void* unwind_inlines ;
 int usage (int ,int) ;
 void* with_functions ;
 int xmalloc_set_program_name (char*) ;

int
main (int argc, char **argv)
{
  const char *file_name;
  const char *section_name;
  char *target;
  int c;







  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  program_name = *argv;
  xmalloc_set_program_name (program_name);

  expandargv (&argc, &argv);

  bfd_init ();
  set_default_bfd_target ();

  file_name = ((void*)0);
  section_name = ((void*)0);
  target = ((void*)0);
  while ((c = getopt_long (argc, argv, "b:Ce:sfHhij:Vv", long_options, (int *) 0))
  != EOF)
    {
      switch (c)
 {
 case 0:
   break;
 case 'b':
   target = optarg;
   break;
 case 'C':
   do_demangle = TRUE;
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
 case 'e':
   file_name = optarg;
   break;
 case 's':
   base_names = TRUE;
   break;
 case 'f':
   with_functions = TRUE;
   break;
 case 'v':
 case 'V':
   print_version ("addr2line");
   break;
 case 'h':
 case 'H':
   usage (stdout, 0);
   break;
 case 'i':
   unwind_inlines = TRUE;
   break;
 case 'j':
   section_name = optarg;
   break;
 default:
   usage (stderr, 1);
   break;
 }
    }

  if (file_name == ((void*)0))
    file_name = "a.out";

  addr = argv + optind;
  naddr = argc - optind;

  return process_file (file_name, section_name, target);
}
