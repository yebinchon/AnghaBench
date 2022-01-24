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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EOF ; 
 int /*<<< orphan*/  LC_COLLATE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
#define  OPTION_TARGET 128 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int do_demangle ; 
 int dynamic ; 
 int /*<<< orphan*/  environ ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int*,char***) ; 
 int external_only ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,...) ; 
 int filename_per_file ; 
 int filename_per_symbol ; 
 int FUNC12 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int line_numbers ; 
 int /*<<< orphan*/  long_options ; 
 int no_sort ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,...) ; 
 char* optarg ; 
 int optind ; 
 int print_armap ; 
 int print_debug_syms ; 
 int print_size ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* program_name ; 
 int reverse_sort ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ show_stats ; 
 int show_version ; 
 scalar_t__ sort_by_size ; 
 int sort_numerically ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 char* target ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int undefined_only ; 
 int unknown_demangling ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

int
FUNC24 (int argc, char **argv)
{
  int c;
  int retval;

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
  setlocale (LC_COLLATE, "");
#endif
  FUNC5 (PACKAGE, LOCALEDIR);
  FUNC21 (PACKAGE);

  program_name = *argv;
  FUNC23 (program_name);

  FUNC2 (program_name, 0);

  FUNC10 (&argc, &argv);

  FUNC4 ();
  FUNC16 ();

  while ((c = FUNC12 (argc, argv, "aABCDef:gHhlnopPrSst:uvVvX:",
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
	case 'B':		/* For MIPS compatibility.  */
	  FUNC17 ("bsd");
	  break;
	case 'C':
	  do_demangle = 1;
	  if (optarg != NULL)
	    {
	      enum demangling_styles style;

	      style = FUNC6 (optarg);
	      if (style == unknown_demangling)
		FUNC11 (FUNC3("unknown demangling style `%s'"),
		       optarg);

	      FUNC7 (style);
	    }
	  break;
	case 'D':
	  dynamic = 1;
	  break;
	case 'e':
	  /* Ignored for HP/UX compatibility.  */
	  break;
	case 'f':
	  FUNC17 (optarg);
	  break;
	case 'g':
	  external_only = 1;
	  break;
	case 'H':
	case 'h':
	  FUNC22 (stdout, 0);
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
	  FUNC17 ("posix");
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
	  FUNC18 (optarg);
	  break;
	case 'u':
	  undefined_only = 1;
	  break;
	case 'V':
	  show_version = 1;
	  break;
	case 'X':
	  /* Ignored for (partial) AIX compatibility.  On AIX, the
	     argument has values 32, 64, or 32_64, and specifies that
	     only 32-bit, only 64-bit, or both kinds of objects should
	     be examined.  The default is 32.  So plain AIX nm on a
	     library archive with both kinds of objects will ignore
	     the 64-bit ones.  For GNU nm, the default is and always
	     has been -X 32_64, and other options are not supported.  */
	  if (FUNC20 (optarg, "32_64") != 0)
	    FUNC11 (FUNC3("Only -X 32_64 is supported"));
	  break;

	case OPTION_TARGET:	/* --target */
	  target = optarg;
	  break;

	case 0:		/* A long option that just sets a flag.  */
	  break;

	default:
	  FUNC22 (stderr, 1);
	}
    }

  if (show_version)
    FUNC14 ("nm");

  if (sort_by_size && undefined_only)
    {
      FUNC13 (FUNC3("Using the --size-sort and --undefined-only options together"));
      FUNC13 (FUNC3("will produce no output, since undefined symbols have no size."));
      return 0;
    }

  /* OK, all options now parsed.  If no filename specified, do a.out.  */
  if (optind == argc)
    return !FUNC8 ("a.out");

  retval = 0;

  if (argc - optind > 1)
    filename_per_file = 1;

  /* We were given several filenames to do.  */
  while (optind < argc)
    {
      FUNC1 (1);
      if (!FUNC8 (argv[optind++]))
	retval++;
    }

  FUNC0 (program_name);

#ifdef HAVE_SBRK
  if (show_stats)
    {
      char *lim = (char *) sbrk (0);

      non_fatal (_("data size %ld"), (long) (lim - (char *) &environ));
    }
#endif

  FUNC9 (retval);
  return retval;
}