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
typedef  void* bfd_boolean ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int address_radix ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* datasection_only ; 
 char encoding ; 
 int encoding_bytes ; 
 int /*<<< orphan*/  FUNC4 (int*,char***) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  long_options ; 
 char* optarg ; 
 int optind ; 
 void* print_addresses ; 
 void* print_filenames ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int string_min ; 
 scalar_t__ FUNC14 (char*) ; 
 char* target ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

int
FUNC18 (int argc, char **argv)
{
  int optc;
  int exit_status = 0;
  bfd_boolean files_given = FALSE;

#if defined (HAVE_SETLOCALE)
  setlocale (LC_ALL, "");
#endif
  FUNC3 (PACKAGE, LOCALEDIR);
  FUNC15 (PACKAGE);

  program_name = argv[0];
  FUNC17 (program_name);

  FUNC4 (&argc, &argv);

  string_min = -1;
  print_addresses = FALSE;
  print_filenames = FALSE;
  datasection_only = TRUE;
  target = NULL;
  encoding = 's';

  while ((optc = FUNC7 (argc, argv, "afhHn:ot:e:T:Vv0123456789",
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
	  FUNC16 (stdout, 0);

	case 'n':
	  string_min = FUNC8 (optarg);
	  if (string_min < 1)
	    FUNC5 (FUNC1("invalid number %s"), optarg);
	  break;

	case 'o':
	  print_addresses = TRUE;
	  address_radix = 8;
	  break;

	case 't':
	  print_addresses = TRUE;
	  if (optarg[1] != '\0')
	    FUNC16 (stderr, 1);
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
	      FUNC16 (stderr, 1);
	    }
	  break;

	case 'T':
	  target = optarg;
	  break;

	case 'e':
	  if (optarg[1] != '\0')
	    FUNC16 (stderr, 1);
	  encoding = optarg[0];
	  break;

	case 'V':
	case 'v':
	  FUNC10 ("strings");
	  break;

	case '?':
	  FUNC16 (stderr, 1);

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
      FUNC16 (stderr, 1);
    }

  FUNC2 ();
  FUNC11 ();

  if (optind >= argc)
    {
      datasection_only = FALSE;
#ifdef SET_BINARY
      SET_BINARY (fileno (stdin));
#endif
      FUNC9 ("{standard input}", stdin, 0, 0, 0, (char *) NULL);
      files_given = TRUE;
    }
  else
    {
      for (; optind < argc; ++optind)
	{
	  if (FUNC13 (argv[optind], "-") == 0)
	    datasection_only = FALSE;
	  else
	    {
	      files_given = TRUE;
	      exit_status |= FUNC14 (argv[optind]) == FALSE;
	    }
	}
    }

  if (!files_given)
    FUNC16 (stderr, 1);

  return (exit_status);
}