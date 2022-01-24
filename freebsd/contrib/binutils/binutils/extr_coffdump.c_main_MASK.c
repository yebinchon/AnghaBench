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
struct coff_ofile {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char***) ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct coff_ofile*) ; 
 struct coff_ofile* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int*,char***) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char**) ; 
 int FUNC13 (int,char**,char*,struct option*,int*) ; 
 int /*<<< orphan*/  FUNC14 (char**) ; 
#define  no_argument 128 
 int optind ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

int
FUNC21 (int ac, char **av)
{
  bfd *abfd;
  struct coff_ofile *tree;
  char **matching;
  char *input_file = NULL;
  int opt;
  static struct option long_options[] =
    {
      { "help", no_argument, 0, 'h' },
      { "version", no_argument, 0, 'V' },
      { NULL, no_argument, 0, 0 }
    };

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC6 (PACKAGE, LOCALEDIR);
  FUNC19 (PACKAGE);

  program_name = av[0];
  FUNC20 (program_name);

  FUNC10 (&ac, &av);

  while ((opt = FUNC13 (ac, av, "HhVv", long_options,
			     (int *) NULL))
	 != EOF)
    {
      switch (opt)
	{
	case 'H':
	case 'h':
	  FUNC18 (stdout, 0);
	  break;
	case 'v':
	case 'V':
	  FUNC15 ("coffdump");
	  FUNC9 (0);
	case 0:
	  break;
	default:
	  FUNC18 (stderr, 1);
	  break;
	}
    }

  if (optind < ac)
    {
      input_file = av[optind];
    }

  if (!input_file)
    FUNC11 (FUNC0("no input file specified"));

  abfd = FUNC5 (input_file, 0);

  if (!abfd)
    FUNC2 (input_file);

  if (! FUNC1 (abfd, bfd_object, &matching))
    {
      FUNC4 (input_file);

      if (FUNC3 () == bfd_error_file_ambiguously_recognized)
	{
	  FUNC14 (matching);
	  FUNC12 (matching);
	}
      FUNC9 (1);
    }

  tree = FUNC8 (abfd);

  FUNC7 (tree);
  FUNC16 ("\n");

  return 0;
}