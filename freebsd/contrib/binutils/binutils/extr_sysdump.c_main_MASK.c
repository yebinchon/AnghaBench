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
struct option {char* member_0; char member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  const member_1; } ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FOPEN_RB ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,char***) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  file ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char**,char*,struct option*,int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
#define  no_argument 128 
 int optind ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int
FUNC13 (int ac, char **av)
{
  char *input_file = NULL;
  int opt;
  static struct option long_options[] =
  {
    {"help", no_argument, 0, 'h'},
    {"version", no_argument, 0, 'V'},
    {NULL, no_argument, 0, 0}
  };

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC1 (PACKAGE, LOCALEDIR);
  FUNC11 (PACKAGE);

  program_name = av[0];
  FUNC12 (program_name);

  FUNC3 (&ac, &av);

  while ((opt = FUNC6 (ac, av, "HhVv", long_options, (int *) NULL)) != EOF)
    {
      switch (opt)
	{
	case 'H':
	case 'h':
	  FUNC10 (stdout, 0);
	  /*NOTREACHED*/
	case 'v':
	case 'V':
	  FUNC8 ("sysdump");
	  FUNC2 (0);
	  /*NOTREACHED*/
	case 0:
	  break;
	default:
	  FUNC10 (stderr, 1);
	  /*NOTREACHED*/
	}
    }

  /* The input and output files may be named on the command line.  */

  if (optind < ac)
    input_file = av[optind];

  if (!input_file)
    FUNC4 (FUNC0("no input file specified"));

  file = FUNC5 (input_file, FOPEN_RB);

  if (!file)
    FUNC4 (FUNC0("cannot open input file %s"), input_file);

  FUNC7 ();
  return 0;
}