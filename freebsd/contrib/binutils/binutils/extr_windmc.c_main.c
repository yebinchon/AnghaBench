
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unichar ;
typedef int rc_uint_type ;
typedef int FILE ;


 int CP_UTF16 ;
 int EOF ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LOCALEDIR ;
 int PACKAGE ;
 int SEEK_END ;
 int SEEK_SET ;
 char* _ (char*) ;
 int bfd_init () ;
 int bindtextdomain (int ,int ) ;
 char* def_target_arch ;
 int do_sorts () ;
 int expandargv (int*,char***) ;
 int fatal (char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fread (char*,int,long,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int getopt_long (int,char**,char*,int ,int*) ;
 int long_options ;
 char* malloc (long) ;
 int * mc_create_path_text_file (int *,char*) ;
 char* mc_facility_codes ;
 char* mc_nodes_lang ;
 int mc_set_content (int *) ;
 int mc_set_inputfile (char*) ;
 char* mc_severity_codes ;
 int * mc_unify_path (char*) ;
 int mcset_automatic_null_termination ;
 int mcset_bin_out_is_unicode ;
 void* mcset_codepage_in ;
 int mcset_codepage_out ;
 int mcset_custom_bit ;
 int * mcset_dbg_dir ;
 int * mcset_header_dir ;
 char* mcset_header_ext ;
 void* mcset_max_message_length ;
 char* mcset_mc_basename ;
 int mcset_out_values_are_decimal ;
 int mcset_prefix_bin ;
 int * mcset_rc_dir ;
 int mcset_text_in_is_unicode ;
 int mcset_use_hresult ;
 int memset (char*,int ,long) ;
 char* optarg ;
 int optind ;
 int print_version (char*) ;
 int probe_codepage (void**,int*,char*,int ) ;
 char* program_name ;
 int res_init () ;
 int set_default_bfd_target () ;
 int set_endianess (int *,char*) ;
 int setlocale (int ,char*) ;
 int sprintf (char*,char*,char*) ;
 int stderr ;
 int stdout ;
 int strlen (char*) ;
 void* strrchr (char*,char) ;
 void* strtol (char*,char**,int) ;
 scalar_t__ target_is_bigendian ;
 int textdomain (int ) ;
 int unicode_from_codepage (int *,int **,char*,void*) ;
 int unicode_is_valid_codepage (int) ;
 int usage (int ,int) ;
 int write_bin () ;
 int write_dbg (int *) ;
 int write_header (int *) ;
 int write_rc (int *) ;
 int xexit (int ) ;
 char* xmalloc (int ) ;
 int xmalloc_set_program_name (char*) ;
 char* xstrdup (char const*) ;
 scalar_t__ yyparse () ;

int
main (int argc, char **argv)
{
  FILE *h_fp;
  int c;
  char *target, *input_filename;
  int verbose;







  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  program_name = argv[0];
  xmalloc_set_program_name (program_name);

  expandargv (&argc, &argv);

  bfd_init ();
  set_default_bfd_target ();

  target = ((void*)0);
  verbose = 0;
  input_filename = ((void*)0);

  res_init ();

  while ((c = getopt_long (argc, argv, "C:F:O:h:e:m:r:x:aAbcdHunoUvV", long_options,
      (int *) 0)) != EOF)
    {
      switch (c)
 {
 case 'b':
   mcset_prefix_bin = 1;
   break;
 case 'e':
   {
     mcset_header_ext = optarg;
     if (mcset_header_ext[0] != '.' && mcset_header_ext[0] != 0)
       {
  char *hsz = xmalloc (strlen (mcset_header_ext) + 2);

  sprintf (hsz, ".%s", mcset_header_ext);
  mcset_header_ext = hsz;
       }
   }
   break;
 case 'h':
   mcset_header_dir = mc_unify_path (optarg);
   break;
 case 'r':
   mcset_rc_dir = mc_unify_path (optarg);
   break;
 case 'a':
   mcset_text_in_is_unicode = 0;
   break;
 case 'x':
   if (*optarg != 0)
     mcset_dbg_dir = mc_unify_path (optarg);
   break;
 case 'A':
   mcset_bin_out_is_unicode = 0;
   break;
 case 'd':
   mcset_out_values_are_decimal = 1;
   break;
 case 'u':
   mcset_text_in_is_unicode = 1;
   break;
 case 'U':
   mcset_bin_out_is_unicode = 1;
   break;
 case 'c':
   mcset_custom_bit = 1;
   break;
 case 'n':
   mcset_automatic_null_termination = 1;
   break;
 case 'o':
   mcset_use_hresult = 1;
   fatal ("option -o is not implemented until yet.\n");
   break;
 case 'F':
   target = optarg;
   break;
 case 'v':
   verbose ++;
   break;
 case 'm':
   mcset_max_message_length = strtol (optarg, (char **) ((void*)0), 10);
   break;
 case 'C':
   mcset_codepage_in = strtol (optarg, (char **) ((void*)0), 10);
   break;
 case 'O':
   mcset_codepage_out = strtol (optarg, (char **) ((void*)0), 10);
   break;
 case '?':
 case 'H':
   usage (stdout, 0);
   break;
 case 'V':
   print_version ("windmc");
   break;

 default:
   usage (stderr, 1);
   break;
 }
    }
  if (input_filename == ((void*)0) && optind < argc)
    {
      input_filename = argv[optind];
      ++optind;
    }

  set_endianess (((void*)0), target);

  if (input_filename == ((void*)0))
    {
      fprintf (stderr, "Error: No input file was specified.\n");
      usage (stderr, 1);
    }
  mc_set_inputfile (input_filename);

  if (!probe_codepage (&mcset_codepage_in, &mcset_text_in_is_unicode, "codepage_in", 0))
    usage (stderr, 1);
  if (mcset_codepage_out == 0)
    mcset_codepage_out = 1252;
  if (! unicode_is_valid_codepage (mcset_codepage_out))
    fatal ("Code page 0x%x is unknown.", (unsigned int) mcset_codepage_out);
  if (mcset_codepage_out == CP_UTF16)
    fatal ("UTF16 is no valid text output code page.");
  if (verbose)
    {
      fprintf (stderr, "// Default target is %s and it is %s endian.\n",
 def_target_arch, (target_is_bigendian ? "big" : "little"));
      fprintf (stderr, "// Input codepage: 0x%x\n", (unsigned int) mcset_codepage_in);
      fprintf (stderr, "// Output codepage: 0x%x\n", (unsigned int) mcset_codepage_out);
    }

  if (argc != optind)
    usage (stderr, 1);


  {
    const char *bn, *bn2;
    char *hsz;

    bn = strrchr (input_filename, '/');
    bn2 = strrchr (input_filename, '\\');
    if (! bn)
      bn = bn2;
    if (bn && bn2 && bn < bn2)
      bn = bn2;
    if (! bn)
      bn = input_filename;
    else
      bn++;
    mcset_mc_basename = hsz = xstrdup (bn);


    if ((hsz = strrchr (hsz, '.')) != ((void*)0))
      *hsz = 0;
  }


  {
    unichar *u;
    rc_uint_type ul;
    char *buff;
    long flen;
    FILE *fp = fopen (input_filename, "rb");

    if (!fp)
      fatal (_("unable to open file ,%s' for input.\n"), input_filename);

    fseek (fp, 0, SEEK_END);
    flen = ftell (fp);
    fseek (fp, 0, SEEK_SET);
    buff = malloc (flen + 3);
    memset (buff, 0, flen + 3);
    fread (buff, 1, flen, fp);
    fclose (fp);
    if (mcset_text_in_is_unicode != 1)
      {
 unicode_from_codepage (&ul, &u, buff, mcset_codepage_in);
 if (! u)
   fatal ("Failed to convert input to UFT16\n");
 mc_set_content (u);
      }
    else
      {
 if ((flen & 1) != 0)
   fatal (_("input file does not seems to be UFT16.\n"));
 mc_set_content ((unichar *) buff);
      }
    free (buff);
  }

  while (yyparse ())
    ;

  do_sorts ();

  h_fp = mc_create_path_text_file (mcset_header_dir, mcset_header_ext);
  write_header (h_fp);
  fclose (h_fp);

  h_fp = mc_create_path_text_file (mcset_rc_dir, ".rc");
  write_rc (h_fp);
  fclose (h_fp);

  if (mcset_dbg_dir != ((void*)0))
    {
      h_fp = mc_create_path_text_file (mcset_dbg_dir, ".dbg");
      write_dbg (h_fp);
      fclose (h_fp);
    }
  write_bin ();

  if (mc_nodes_lang)
    free (mc_nodes_lang);
  if (mc_severity_codes)
    free (mc_severity_codes);
  if (mc_facility_codes)
    free (mc_facility_codes);

  xexit (0);
  return 0;
}
