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
typedef  enum demangling_styles { ____Placeholder_demangling_styles } demangling_styles ;
typedef  void* bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_ENDIAN_BIG ; 
 int /*<<< orphan*/  BFD_ENDIAN_LITTLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EOF ; 
 void* FALSE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
#define  OPTION_ADJUST_VMA 131 
#define  OPTION_ENDIAN 130 
#define  OPTION_START_ADDRESS 129 
#define  OPTION_STOP_ADDRESS 128 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* adjust_section_vma ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char* default_target ; 
 void* disassemble ; 
 void* disassemble_all ; 
 void* disassemble_zeroes ; 
 char* disassembler_options ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 () ; 
 int do_debug_abbrevs ; 
 int do_debug_aranges ; 
 int do_debug_frames ; 
 int do_debug_info ; 
 int do_debug_lines ; 
 int do_debug_loc ; 
 int do_debug_macinfo ; 
 int do_debug_pubnames ; 
 int do_debug_ranges ; 
 int do_debug_str ; 
 void* do_demangle ; 
 void* dump_ar_hdrs ; 
 int dump_debugging ; 
 int dump_debugging_tags ; 
 void* dump_dwarf_section_info ; 
 void* dump_dynamic_reloc_info ; 
 void* dump_dynamic_symtab ; 
 void* dump_file_header ; 
 void* dump_private_headers ; 
 void* dump_reloc_info ; 
 void* dump_section_contents ; 
 void* dump_section_headers ; 
 void* dump_stab_section_info ; 
 void* dump_symtab ; 
 int /*<<< orphan*/  endian ; 
 int exit_status ; 
 int /*<<< orphan*/  FUNC11 (int*,char***) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 void* formats_info ; 
 int FUNC13 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  long_options ; 
 char* machine ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,...) ; 
 char** only ; 
 int only_size ; 
 int only_used ; 
 char* optarg ; 
 int optind ; 
 void* FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 void* show_version ; 
 void* start_address ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 void* stop_address ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int unknown_demangling ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 void* wide_output ; 
 void* with_line_numbers ; 
 void* with_source_code ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 char** FUNC25 (char**,int) ; 

int
FUNC26 (int argc, char **argv)
{
  int c;
  char *target = default_target;
  bfd_boolean seenflag = FALSE;

#if defined (HAVE_SETLOCALE)
#if defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
  setlocale (LC_CTYPE, "");
#endif

  FUNC5 (PACKAGE, LOCALEDIR);
  FUNC22 (PACKAGE);

  program_name = *argv;
  FUNC24 (program_name);

  FUNC1 (program_name, 0);

  FUNC11 (&argc, &argv);

  FUNC4 ();
  FUNC17 ();

  while ((c = FUNC13 (argc, argv, "pib:m:M:VvCdDlfaHhrRtTxsSI:j:wE:zgeGW",
			   long_options, (int *) 0))
	 != EOF)
    {
      switch (c)
	{
	case 0:
	  break;		/* We've been given a long option.  */
	case 'm':
	  machine = optarg;
	  break;
	case 'M':
	  if (disassembler_options)
	    /* Ignore potential memory leak for now.  */
	    disassembler_options = FUNC6 (disassembler_options, ",",
					   optarg, NULL);
	  else
	    disassembler_options = optarg;
	  break;
	case 'j':
	  if (only_used == only_size)
	    {
	      only_size += 8;
	      only = FUNC25 (only, only_size * sizeof (char *));
	    }
	  only [only_used++] = optarg;
	  break;
	case 'l':
	  with_line_numbers = TRUE;
	  break;
	case 'b':
	  target = optarg;
	  break;
	case 'C':
	  do_demangle = TRUE;
	  if (optarg != NULL)
	    {
	      enum demangling_styles style;

	      style = FUNC7 (optarg);
	      if (style == unknown_demangling)
		FUNC12 (FUNC2("unknown demangling style `%s'"),
		       optarg);

	      FUNC8 (style);
	    }
	  break;
	case 'w':
	  wide_output = TRUE;
	  break;
	case OPTION_ADJUST_VMA:
	  adjust_section_vma = FUNC15 (optarg, "--adjust-vma");
	  break;
	case OPTION_START_ADDRESS:
	  start_address = FUNC15 (optarg, "--start-address");
	  break;
	case OPTION_STOP_ADDRESS:
	  stop_address = FUNC15 (optarg, "--stop-address");
	  break;
	case 'E':
	  if (FUNC19 (optarg, "B") == 0)
	    endian = BFD_ENDIAN_BIG;
	  else if (FUNC19 (optarg, "L") == 0)
	    endian = BFD_ENDIAN_LITTLE;
	  else
	    {
	      FUNC14 (FUNC2("unrecognized -E option"));
	      FUNC23 (stderr, 1);
	    }
	  break;
	case OPTION_ENDIAN:
	  if (FUNC21 (optarg, "big", FUNC20 (optarg)) == 0)
	    endian = BFD_ENDIAN_BIG;
	  else if (FUNC21 (optarg, "little", FUNC20 (optarg)) == 0)
	    endian = BFD_ENDIAN_LITTLE;
	  else
	    {
	      FUNC14 (FUNC2("unrecognized --endian type `%s'"), optarg);
	      FUNC23 (stderr, 1);
	    }
	  break;

	case 'f':
	  dump_file_header = TRUE;
	  seenflag = TRUE;
	  break;
	case 'i':
	  formats_info = TRUE;
	  seenflag = TRUE;
	  break;
	case 'I':
	  FUNC3 (optarg);
	  break;
	case 'p':
	  dump_private_headers = TRUE;
	  seenflag = TRUE;
	  break;
	case 'x':
	  dump_private_headers = TRUE;
	  dump_symtab = TRUE;
	  dump_reloc_info = TRUE;
	  dump_file_header = TRUE;
	  dump_ar_hdrs = TRUE;
	  dump_section_headers = TRUE;
	  seenflag = TRUE;
	  break;
	case 't':
	  dump_symtab = TRUE;
	  seenflag = TRUE;
	  break;
	case 'T':
	  dump_dynamic_symtab = TRUE;
	  seenflag = TRUE;
	  break;
	case 'd':
	  disassemble = TRUE;
	  seenflag = TRUE;
	  break;
	case 'z':
	  disassemble_zeroes = TRUE;
	  break;
	case 'D':
	  disassemble = TRUE;
	  disassemble_all = TRUE;
	  seenflag = TRUE;
	  break;
	case 'S':
	  disassemble = TRUE;
	  with_source_code = TRUE;
	  seenflag = TRUE;
	  break;
	case 'g':
	  dump_debugging = 1;
	  seenflag = TRUE;
	  break;
	case 'e':
	  dump_debugging = 1;
	  dump_debugging_tags = 1;
	  do_demangle = TRUE;
	  seenflag = TRUE;
	  break;
	case 'W':
	  dump_dwarf_section_info = TRUE;
	  seenflag = TRUE;
	  do_debug_info = 1;
	  do_debug_abbrevs = 1;
	  do_debug_lines = 1;
	  do_debug_pubnames = 1;
	  do_debug_aranges = 1;
	  do_debug_ranges = 1;
	  do_debug_frames = 1;
	  do_debug_macinfo = 1;
	  do_debug_str = 1;
	  do_debug_loc = 1;
	  break;
	case 'G':
	  dump_stab_section_info = TRUE;
	  seenflag = TRUE;
	  break;
	case 's':
	  dump_section_contents = TRUE;
	  seenflag = TRUE;
	  break;
	case 'r':
	  dump_reloc_info = TRUE;
	  seenflag = TRUE;
	  break;
	case 'R':
	  dump_dynamic_reloc_info = TRUE;
	  seenflag = TRUE;
	  break;
	case 'a':
	  dump_ar_hdrs = TRUE;
	  seenflag = TRUE;
	  break;
	case 'h':
	  dump_section_headers = TRUE;
	  seenflag = TRUE;
	  break;
	case 'H':
	  FUNC23 (stdout, 0);
	  seenflag = TRUE;
	case 'v':
	case 'V':
	  show_version = TRUE;
	  seenflag = TRUE;
	  break;

	default:
	  FUNC23 (stderr, 1);
	}
    }

  if (show_version)
    FUNC16 ("objdump");

  if (!seenflag)
    FUNC23 (stderr, 2);

  if (formats_info)
    exit_status = FUNC10 ();
  else
    {
      if (optind == argc)
	FUNC9 ("a.out", target);
      else
	for (; optind < argc;)
	  FUNC9 (argv[optind++], target);
    }

  FUNC0 (program_name);

  return exit_status;
}