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
 int EOF ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** addr ; 
 void* base_names ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* do_demangle ; 
 int /*<<< orphan*/  FUNC5 (int*,char***) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  long_options ; 
 int naddr ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char const*,char const*,char*) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int unknown_demangling ; 
 void* unwind_inlines ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 void* with_functions ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

int
FUNC15 (int argc, char **argv)
{
  const char *file_name;
  const char *section_name;
  char *target;
  int c;

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC2 (PACKAGE, LOCALEDIR);
  FUNC12 (PACKAGE);

  program_name = *argv;
  FUNC14 (program_name);

  FUNC5 (&argc, &argv);

  FUNC1 ();
  FUNC10 ();

  file_name = NULL;
  section_name = NULL;
  target = NULL;
  while ((c = FUNC7 (argc, argv, "b:Ce:sfHhij:Vv", long_options, (int *) 0))
	 != EOF)
    {
      switch (c)
	{
	case 0:
	  break;		/* We've been given a long option.  */
	case 'b':
	  target = optarg;
	  break;
	case 'C':
	  do_demangle = TRUE;
	  if (optarg != NULL)
	    {
	      enum demangling_styles style;

	      style = FUNC3 (optarg);
	      if (style == unknown_demangling)
		FUNC6 (FUNC0("unknown demangling style `%s'"),
		       optarg);

	      FUNC4 (style);
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
	  FUNC8 ("addr2line");
	  break;
	case 'h':
	case 'H':
	  FUNC13 (stdout, 0);
	  break;
	case 'i':
	  unwind_inlines = TRUE;
	  break;
	case 'j':
	  section_name = optarg;
	  break;
	default:
	  FUNC13 (stderr, 1);
	  break;
	}
    }

  if (file_name == NULL)
    file_name = "a.out";

  addr = argv + optind;
  naddr = argc - optind;

  return FUNC9 (file_name, section_name, target);
}