
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* bfd_boolean ;


 int EOF ;
 scalar_t__ FALSE ;
 int LC_ALL ;
 int LOCALEDIR ;
 int PACKAGE ;
 int SET_BINARY (int ) ;
 void* TRUE ;
 int _ (char*) ;
 int address_radix ;
 int bfd_init () ;
 int bindtextdomain (int ,int ) ;
 void* datasection_only ;
 char encoding ;
 int encoding_bytes ;
 int expandargv (int*,char***) ;
 int fatal (int ,char*) ;
 int fileno (int ) ;
 int getopt_long (int,char**,char*,int ,int*) ;
 int integer_arg (char*) ;
 int long_options ;
 char* optarg ;
 int optind ;
 void* print_addresses ;
 void* print_filenames ;
 int print_strings (char*,int ,int ,int ,int ,char*) ;
 int print_version (char*) ;
 char* program_name ;
 int set_default_bfd_target () ;
 int setlocale (int ,char*) ;
 int stderr ;
 int stdin ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int string_min ;
 scalar_t__ strings_file (char*) ;
 char* target ;
 int textdomain (int ) ;
 int usage (int ,int) ;
 int xmalloc_set_program_name (char*) ;

int
main (int argc, char **argv)
{
  int optc;
  int exit_status = 0;
  bfd_boolean files_given = FALSE;




  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  program_name = argv[0];
  xmalloc_set_program_name (program_name);

  expandargv (&argc, &argv);

  string_min = -1;
  print_addresses = FALSE;
  print_filenames = FALSE;
  datasection_only = TRUE;
  target = ((void*)0);
  encoding = 's';

  while ((optc = getopt_long (argc, argv, "afhHn:ot:e:T:Vv0123456789",
         long_options, (int *) 0)) != EOF)
    {
      switch (optc)
 {
 case 'a':
   datasection_only = FALSE;
   break;

 case 'f':
   print_filenames = TRUE;
   break;

 case 'H':
 case 'h':
   usage (stdout, 0);

 case 'n':
   string_min = integer_arg (optarg);
   if (string_min < 1)
     fatal (_("invalid number %s"), optarg);
   break;

 case 'o':
   print_addresses = TRUE;
   address_radix = 8;
   break;

 case 't':
   print_addresses = TRUE;
   if (optarg[1] != '\0')
     usage (stderr, 1);
   switch (optarg[0])
     {
     case 'o':
       address_radix = 8;
       break;

     case 'd':
       address_radix = 10;
       break;

     case 'x':
       address_radix = 16;
       break;

     default:
       usage (stderr, 1);
     }
   break;

 case 'T':
   target = optarg;
   break;

 case 'e':
   if (optarg[1] != '\0')
     usage (stderr, 1);
   encoding = optarg[0];
   break;

 case 'V':
 case 'v':
   print_version ("strings");
   break;

 case '?':
   usage (stderr, 1);

 default:
   if (string_min < 0)
     string_min = optc - '0';
   else
     string_min = string_min * 10 + optc - '0';
   break;
 }
    }

  if (string_min < 0)
    string_min = 4;

  switch (encoding)
    {
    case 'S':
    case 's':
      encoding_bytes = 1;
      break;
    case 'b':
    case 'l':
      encoding_bytes = 2;
      break;
    case 'B':
    case 'L':
      encoding_bytes = 4;
      break;
    default:
      usage (stderr, 1);
    }

  bfd_init ();
  set_default_bfd_target ();

  if (optind >= argc)
    {
      datasection_only = FALSE;



      print_strings ("{standard input}", stdin, 0, 0, 0, (char *) ((void*)0));
      files_given = TRUE;
    }
  else
    {
      for (; optind < argc; ++optind)
 {
   if (strcmp (argv[optind], "-") == 0)
     datasection_only = FALSE;
   else
     {
       files_given = TRUE;
       exit_status |= strings_file (argv[optind]) == FALSE;
     }
 }
    }

  if (!files_given)
    usage (stderr, 1);

  return (exit_status);
}
