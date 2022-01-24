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
typedef  int /*<<< orphan*/  mbuffer ;
typedef  enum demangling_styles { ____Placeholder_demangling_styles } demangling_styles ;

/* Variables and functions */
 int /*<<< orphan*/  DMGL_PARAMS ; 
 int /*<<< orphan*/  DMGL_TYPES ; 
 int /*<<< orphan*/  DMGL_VERBOSE ; 
 int EOF ; 
 scalar_t__ FUNC0 (int) ; 
#define  arm_demangling 136 
#define  auto_demangling 135 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int current_demangling_style ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
#define  edg_demangling 134 
 int /*<<< orphan*/  FUNC4 (int*,char***) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC8 () ; 
 int FUNC9 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
#define  gnat_demangling 133 
#define  gnu_demangling 132 
#define  gnu_v3_demangling 131 
#define  hp_demangling 130 
 char* FUNC10 () ; 
#define  java_demangling 129 
 int /*<<< orphan*/  long_options ; 
#define  lucid_demangling 128 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 char* FUNC13 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC14 (char const*,int) ; 
 int strip_underscore ; 
 int unknown_demangling ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17 (int argc, char **argv)
{
  int c;
  const char *valid_symbols;
  enum demangling_styles style = auto_demangling;

  program_name = argv[0];
  FUNC16 (program_name);

  FUNC4 (&argc, &argv);

  while ((c = FUNC9 (argc, argv, "_hinps:tv", long_options, (int *) 0)) != EOF)
    {
      switch (c)
	{
	case '?':
	  FUNC15 (stderr, 1);
	  break;
	case 'h':
	  FUNC15 (stdout, 0);
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
	  FUNC11 ("c++filt");
	  return 0;
	case '_':
	  strip_underscore = 1;
	  break;
	case 's':
	  style = FUNC1 (optarg);
	  if (style == unknown_demangling)
	    {
	      FUNC7 (stderr, "%s: unknown demangling style `%s'\n",
		       program_name, optarg);
	      return 1;
	    }
	  FUNC2 (style);
	  break;
	}
    }

  if (optind < argc)
    {
      for ( ; optind < argc; optind++)
	{
	  FUNC3 (argv[optind]);
	  FUNC12 ('\n');
	}

      return 0;
    }

  switch (current_demangling_style)
    {
    case gnu_demangling:
    case lucid_demangling:
    case arm_demangling:
    case java_demangling:
    case edg_demangling:
    case gnat_demangling:
    case gnu_v3_demangling:
    case auto_demangling:
      valid_symbols = FUNC13 ();
      break;
    case hp_demangling:
      valid_symbols = FUNC10 ();
      break;
    default:
      /* Folks should explicitly indicate the appropriate alphabet for
	 each demangling.  Providing a default would allow the
	 question to go unconsidered.  */
      FUNC5 ("Internal error: no symbol alphabet for current style");
    }

  for (;;)
    {
      static char mbuffer[32767];
      unsigned i = 0;

      c = FUNC8 ();
      /* Try to read a mangled name.  */
      while (c != EOF && (FUNC0 (c) || FUNC14 (valid_symbols, c)))
	{
	  if (i >= sizeof (mbuffer) - 1)
	    break;
	  mbuffer[i++] = c;
	  c = FUNC8 ();
	}

      if (i > 0)
	{
	  mbuffer[i] = 0;
	  FUNC3 (mbuffer);
	}

      if (c == EOF)
	break;

      /* Echo the whitespace characters so that the output looks
	 like the input, only with the mangled names demangled.  */
      FUNC12 (c);
      if (c == '\n')
	FUNC6 (stdout);
    }

  FUNC6 (stdout);
  return 0;
}