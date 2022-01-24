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
 int /*<<< orphan*/  FOPEN_WB ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  abfd ; 
 int base1 ; 
 int base2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char***) ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int*,char***) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  file ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char**) ; 
 int FUNC13 (int,char**,char*,struct option*,int*) ; 
 int /*<<< orphan*/  FUNC14 (char**) ; 
#define  no_argument 128 
 int noprescan ; 
 int optind ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int) ; 
 char* program_name ; 
 int quick ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 scalar_t__ FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 char* FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 

int
FUNC28 (int ac, char **av)
{
  int opt;
  static struct option long_options[] =
  {
    {"debug", no_argument, 0, 'd'},
    {"quick", no_argument, 0, 'q'},
    {"noprescan", no_argument, 0, 'n'},
    {"help", no_argument, 0, 'h'},
    {"version", no_argument, 0, 'V'},
    {NULL, no_argument, 0, 0}
  };
  char **matching;
  char *input_file;
  char *output_file;

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC6 (PACKAGE, LOCALEDIR);
  FUNC24 (PACKAGE);

  program_name = av[0];
  FUNC27 (program_name);

  FUNC9 (&ac, &av);

  while ((opt = FUNC13 (ac, av, "dHhVvqn", long_options,
			     (int *) NULL))
	 != EOF)
    {
      switch (opt)
	{
	case 'q':
	  quick = 1;
	  break;
	case 'n':
	  noprescan = 1;
	  break;
	case 'd':
	  debug = 1;
	  break;
	case 'H':
	case 'h':
	  FUNC19 (stdout, 0);
	  /*NOTREACHED */
	case 'v':
	case 'V':
	  FUNC16 ("srconv");
	  FUNC8 (0);
	  /*NOTREACHED */
	case 0:
	  break;
	default:
	  FUNC19 (stderr, 1);
	  /*NOTREACHED */
	}
    }

  /* The input and output files may be named on the command line.  */
  output_file = NULL;
  if (optind < ac)
    {
      input_file = av[optind];
      ++optind;
      if (optind < ac)
	{
	  output_file = av[optind];
	  ++optind;
	  if (optind < ac)
	    FUNC19 (stderr, 1);
	  if (FUNC21 (input_file, output_file) == 0)
	    {
	      FUNC10 (FUNC0("input and output files must be different"));
	    }
	}
    }
  else
    input_file = 0;

  if (!input_file)
    {
      FUNC10 (FUNC0("no input file specified"));
    }

  if (!output_file)
    {
      /* Take a .o off the input file and stick on a .obj.  If
         it doesn't end in .o, then stick a .obj on anyway */

      int len = FUNC23 (input_file);

      output_file = FUNC26 (len + 5);
      FUNC22 (output_file, input_file);

      if (len > 3
	  && output_file[len - 2] == '.'
	  && output_file[len - 1] == 'o')
	{
	  output_file[len] = 'b';
	  output_file[len + 1] = 'j';
	  output_file[len + 2] = 0;
	}
      else
	{
	  FUNC20 (output_file, ".obj");
	}
    }

  abfd = FUNC5 (input_file, 0);

  if (!abfd)
    FUNC2 (input_file);

  if (!FUNC1 (abfd, bfd_object, &matching))
    {
      FUNC4 (input_file);

      if (FUNC3 () == bfd_error_file_ambiguously_recognized)
	{
	  FUNC14 (matching);
	  FUNC12 (matching);
	}
      FUNC8 (1);
    }

  file = FUNC11 (output_file, FOPEN_WB);

  if (!file)
    FUNC10 (FUNC0("unable to open output file %s"), output_file);

  if (debug)
    FUNC17 ("ids %d %d\n", base1, base2);

  tree = FUNC7 (abfd);

  if (!noprescan)
    FUNC15 (tree);

  FUNC25 (tree);
  return 0;
}