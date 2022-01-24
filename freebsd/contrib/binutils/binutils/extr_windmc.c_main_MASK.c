#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  unichar ;
typedef  int /*<<< orphan*/  rc_uint_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CP_UTF16 ; 
 int EOF ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* def_target_arch ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int*,char***) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  long_options ; 
 char* FUNC14 (long) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char*) ; 
 char* mc_facility_codes ; 
 char* mc_nodes_lang ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 char* mc_severity_codes ; 
 int /*<<< orphan*/ * FUNC18 (char*) ; 
 int mcset_automatic_null_termination ; 
 int mcset_bin_out_is_unicode ; 
 void* mcset_codepage_in ; 
 int mcset_codepage_out ; 
 int mcset_custom_bit ; 
 int /*<<< orphan*/ * mcset_dbg_dir ; 
 int /*<<< orphan*/ * mcset_header_dir ; 
 char* mcset_header_ext ; 
 void* mcset_max_message_length ; 
 char* mcset_mc_basename ; 
 int mcset_out_values_are_decimal ; 
 int mcset_prefix_bin ; 
 int /*<<< orphan*/ * mcset_rc_dir ; 
 int mcset_text_in_is_unicode ; 
 int mcset_use_hresult ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,long) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (void**,int*,char*,int /*<<< orphan*/ ) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 void* FUNC28 (char*,char) ; 
 void* FUNC29 (char*,char**,int) ; 
 scalar_t__ target_is_bigendian ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*,void*) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 char* FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (char*) ; 
 char* FUNC41 (char const*) ; 
 scalar_t__ FUNC42 () ; 

int
FUNC43 (int argc, char **argv)
{
  FILE *h_fp;
  int c;
  char *target, *input_filename;
  int verbose;

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC2 (PACKAGE, LOCALEDIR);
  FUNC30 (PACKAGE);

  program_name = argv[0];
  FUNC40 (program_name);

  FUNC4 (&argc, &argv);

  FUNC1 ();
  FUNC23 ();

  target = NULL;
  verbose = 0;
  input_filename = NULL;

  FUNC22 ();

  while ((c = FUNC13 (argc, argv, "C:F:O:h:e:m:r:x:aAbcdHunoUvV", long_options,
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
		char *hsz = FUNC39 (FUNC27 (mcset_header_ext) + 2);

		FUNC26 (hsz, ".%s", mcset_header_ext);
		mcset_header_ext = hsz;
	      }
	  }
	  break;
	case 'h':
	  mcset_header_dir = FUNC18 (optarg);
	  break;
	case 'r':
	  mcset_rc_dir = FUNC18 (optarg);
	  break;
	case 'a':
	  mcset_text_in_is_unicode = 0;
	  break;
	case 'x':
	  if (*optarg != 0)
	    mcset_dbg_dir = FUNC18 (optarg);
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
	  FUNC5 ("option -o is not implemented until yet.\n");
	  break;
	case 'F':
	  target = optarg;
	  break;
	case 'v':
	  verbose ++;
	  break;
	case 'm':
	  mcset_max_message_length = FUNC29 (optarg, (char **) NULL, 10);
	  break;
	case 'C':
	  mcset_codepage_in = FUNC29 (optarg, (char **) NULL, 10);
	  break;
	case 'O':
	  mcset_codepage_out = FUNC29 (optarg, (char **) NULL, 10);
	  break;
	case '?':
	case 'H':
	  FUNC33 (stdout, 0);
	  break;
	case 'V':
	  FUNC20 ("windmc");
	  break;

	default:
	  FUNC33 (stderr, 1);
	  break;
	}
    }
  if (input_filename == NULL && optind < argc)
    {
      input_filename = argv[optind];
      ++optind;
    }

  FUNC24 (NULL, target);

  if (input_filename == NULL)
    {
      FUNC8 (stderr, "Error: No input file was specified.\n");
      FUNC33 (stderr, 1);
    }
  FUNC17 (input_filename);

  if (!FUNC21 (&mcset_codepage_in, &mcset_text_in_is_unicode, "codepage_in", 0))
    FUNC33 (stderr, 1);
  if (mcset_codepage_out == 0)
    mcset_codepage_out = 1252;
  if (! FUNC32 (mcset_codepage_out))
    FUNC5 ("Code page 0x%x is unknown.", (unsigned int) mcset_codepage_out);
  if (mcset_codepage_out == CP_UTF16)
    FUNC5 ("UTF16 is no valid text output code page.");
  if (verbose)
    {
      FUNC8 (stderr, "// Default target is %s and it is %s endian.\n",
	def_target_arch, (target_is_bigendian ? "big" : "little"));
      FUNC8 (stderr, "// Input codepage: 0x%x\n", (unsigned int) mcset_codepage_in);
      FUNC8 (stderr, "// Output codepage: 0x%x\n", (unsigned int) mcset_codepage_out);
    }

  if (argc != optind)
    FUNC33 (stderr, 1);

  /* Initialize mcset_mc_basename.  */
  {
    const char *bn, *bn2;
    char *hsz;

    bn = FUNC28 (input_filename, '/');
    bn2 = FUNC28 (input_filename, '\\');
    if (! bn)
      bn = bn2;
    if (bn && bn2 && bn < bn2)
      bn = bn2;
    if (! bn)
      bn = input_filename;
    else
      bn++;
    mcset_mc_basename = hsz = FUNC41 (bn);

    /* Cut of right-hand extension.  */
    if ((hsz = FUNC28 (hsz, '.')) != NULL)
      *hsz = 0;
  }

  /* Load the input file and do code page transformations to UTF16.  */
  {
    unichar *u;
    rc_uint_type ul;
    char *buff;
    long flen;
    FILE *fp = FUNC7 (input_filename, "rb");

    if (!fp)
      FUNC5 (FUNC0("unable to open file ,%s' for input.\n"), input_filename);

    FUNC11 (fp, 0, SEEK_END);
    flen = FUNC12 (fp);
    FUNC11 (fp, 0, SEEK_SET);
    buff = FUNC14 (flen + 3);
    FUNC19 (buff, 0, flen + 3);
    FUNC9 (buff, 1, flen, fp);
    FUNC6 (fp);
    if (mcset_text_in_is_unicode != 1)
      {
	FUNC31 (&ul, &u, buff, mcset_codepage_in);
	if (! u)
	  FUNC5 ("Failed to convert input to UFT16\n");
	FUNC16 (u);
      }
    else
      {
	if ((flen & 1) != 0)
	  FUNC5 (FUNC0("input file does not seems to be UFT16.\n"));
	FUNC16 ((unichar *) buff);
      }
    FUNC10 (buff);
  }

  while (FUNC42 ())
    ;

  FUNC3 ();

  h_fp = FUNC15 (mcset_header_dir, mcset_header_ext);
  FUNC36 (h_fp);
  FUNC6 (h_fp);

  h_fp = FUNC15 (mcset_rc_dir, ".rc");
  FUNC37 (h_fp);
  FUNC6 (h_fp);

  if (mcset_dbg_dir != NULL)
    {
      h_fp = FUNC15 (mcset_dbg_dir, ".dbg");
      FUNC35 (h_fp);
      FUNC6 (h_fp);
    }
  FUNC34 ();

  if (mc_nodes_lang)
    FUNC10 (mc_nodes_lang);
  if (mc_severity_codes)
    FUNC10 (mc_severity_codes);
  if (mc_facility_codes)
    FUNC10 (mc_facility_codes);

  FUNC38 (0);
  return 0;
}