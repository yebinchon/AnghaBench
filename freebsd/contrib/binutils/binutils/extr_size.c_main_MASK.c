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
typedef  scalar_t__ bfd_size_type ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int berkeley_format ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ decimal ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,char***) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ hex ; 
 int /*<<< orphan*/  long_options ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ octal ; 
 int /*<<< orphan*/ * optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned long,unsigned long) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC11 (char) ; 
 scalar_t__ radix ; 
 int return_code ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ show_help ; 
 int show_totals ; 
 int show_version ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * target ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ total_bsssize ; 
 scalar_t__ total_datasize ; 
 scalar_t__ total_textsize ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

int
FUNC19 (int argc, char **argv)
{
  int temp;
  int c;

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC3 (PACKAGE, LOCALEDIR);
  FUNC16 (PACKAGE);

  program_name = *argv;
  FUNC18 (program_name);

  FUNC5 (&argc, &argv);

  FUNC2 ();
  FUNC13 ();

  while ((c = FUNC7 (argc, argv, "ABHhVvdfotx", long_options,
			   (int *) 0)) != EOF)
    switch (c)
      {
      case 200:		/* --format */
	switch (*optarg)
	  {
	  case 'B':
	  case 'b':
	    berkeley_format = 1;
	    break;
	  case 'S':
	  case 's':
	    berkeley_format = 0;
	    break;
	  default:
	    FUNC8 (FUNC0("invalid argument to --format: %s"), optarg);
	    FUNC17 (stderr, 1);
	  }
	break;

      case 202:		/* --target */
	target = optarg;
	break;

      case 201:		/* --radix */
#ifdef ANSI_LIBRARIES
	temp = strtol (optarg, NULL, 10);
#else
	temp = FUNC1 (optarg);
#endif
	switch (temp)
	  {
	  case 10:
	    radix = decimal;
	    break;
	  case 8:
	    radix = octal;
	    break;
	  case 16:
	    radix = hex;
	    break;
	  default:
	    FUNC8 (FUNC0("Invalid radix: %s\n"), optarg);
	    FUNC17 (stderr, 1);
	  }
	break;

      case 'A':
	berkeley_format = 0;
	break;
      case 'B':
	berkeley_format = 1;
	break;
      case 'v':
      case 'V':
	show_version = 1;
	break;
      case 'd':
	radix = decimal;
	break;
      case 'x':
	radix = hex;
	break;
      case 'o':
	radix = octal;
	break;
      case 't':
	show_totals = 1;
	break;
      case 'f': /* FIXME : For sysv68, `-f' means `full format', i.e.
		   `[fname:] M(.text) + N(.data) + O(.bss) + P(.comment) = Q'
		   where `fname: ' appears only if there are >= 2 input files,
		   and M, N, O, P, Q are expressed in decimal by default,
		   hexa or octal if requested by `-x' or `-o'.
		   Just to make things interesting, Solaris also accepts -f,
		   which prints out the size of each allocatable section, the
		   name of the section, and the total of the section sizes.  */
		/* For the moment, accept `-f' silently, and ignore it.  */
	break;
      case 0:
	break;
      case 'h':
      case 'H':
      case '?':
	FUNC17 (stderr, 1);
      }

  if (show_version)
    FUNC9 ("size");
  if (show_help)
    FUNC17 (stdout, 0);

  if (optind == argc)
    FUNC4 ("a.out");
  else
    for (; optind < argc;)
      FUNC4 (argv[optind++]);

  if (show_totals && berkeley_format)
    {
      bfd_size_type total = total_textsize + total_datasize + total_bsssize;

      FUNC12 (7, total_textsize);
      FUNC11('\t');
      FUNC12 (7, total_datasize);
      FUNC11('\t');
      FUNC12 (7, total_bsssize);
      FUNC10 (((radix == octal) ? "\t%7lo\t%7lx\t" : "\t%7lu\t%7lx\t"),
	      (unsigned long) total, (unsigned long) total);
      FUNC6 ("(TOTALS)\n", stdout);
    }

  return return_code;
}