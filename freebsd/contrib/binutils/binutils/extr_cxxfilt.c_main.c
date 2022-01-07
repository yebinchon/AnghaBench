
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuffer ;
typedef enum demangling_styles { ____Placeholder_demangling_styles } demangling_styles ;


 int DMGL_PARAMS ;
 int DMGL_TYPES ;
 int DMGL_VERBOSE ;
 int EOF ;
 scalar_t__ ISALNUM (int) ;


 int cplus_demangle_name_to_style (char*) ;
 int cplus_demangle_set_style (int) ;
 int current_demangling_style ;
 int demangle_it (char*) ;

 int expandargv (int*,char***) ;
 int fatal (char*) ;
 int fflush (int ) ;
 int flags ;
 int fprintf (int ,char*,char*,char*) ;
 int getchar () ;
 int getopt_long (int,char**,char*,int ,int*) ;




 char* hp_symbol_characters () ;

 int long_options ;

 char* optarg ;
 int optind ;
 int print_version (char*) ;
 char* program_name ;
 int putchar (int) ;
 char* standard_symbol_characters () ;
 int stderr ;
 int stdout ;
 scalar_t__ strchr (char const*,int) ;
 int strip_underscore ;
 int unknown_demangling ;
 int usage (int ,int) ;
 int xmalloc_set_program_name (char*) ;

int
main (int argc, char **argv)
{
  int c;
  const char *valid_symbols;
  enum demangling_styles style = 135;

  program_name = argv[0];
  xmalloc_set_program_name (program_name);

  expandargv (&argc, &argv);

  while ((c = getopt_long (argc, argv, "_hinps:tv", long_options, (int *) 0)) != EOF)
    {
      switch (c)
 {
 case '?':
   usage (stderr, 1);
   break;
 case 'h':
   usage (stdout, 0);
 case 'n':
   strip_underscore = 0;
   break;
 case 'p':
   flags &= ~ DMGL_PARAMS;
   break;
 case 't':
   flags |= DMGL_TYPES;
   break;
 case 'i':
   flags &= ~ DMGL_VERBOSE;
   break;
 case 'v':
   print_version ("c++filt");
   return 0;
 case '_':
   strip_underscore = 1;
   break;
 case 's':
   style = cplus_demangle_name_to_style (optarg);
   if (style == unknown_demangling)
     {
       fprintf (stderr, "%s: unknown demangling style `%s'\n",
         program_name, optarg);
       return 1;
     }
   cplus_demangle_set_style (style);
   break;
 }
    }

  if (optind < argc)
    {
      for ( ; optind < argc; optind++)
 {
   demangle_it (argv[optind]);
   putchar ('\n');
 }

      return 0;
    }

  switch (current_demangling_style)
    {
    case 132:
    case 128:
    case 136:
    case 129:
    case 134:
    case 133:
    case 131:
    case 135:
      valid_symbols = standard_symbol_characters ();
      break;
    case 130:
      valid_symbols = hp_symbol_characters ();
      break;
    default:



      fatal ("Internal error: no symbol alphabet for current style");
    }

  for (;;)
    {
      static char mbuffer[32767];
      unsigned i = 0;

      c = getchar ();

      while (c != EOF && (ISALNUM (c) || strchr (valid_symbols, c)))
 {
   if (i >= sizeof (mbuffer) - 1)
     break;
   mbuffer[i++] = c;
   c = getchar ();
 }

      if (i > 0)
 {
   mbuffer[i] = 0;
   demangle_it (mbuffer);
 }

      if (c == EOF)
 break;



      putchar (c);
      if (c == '\n')
 fflush (stdout);
    }

  fflush (stdout);
  return 0;
}
