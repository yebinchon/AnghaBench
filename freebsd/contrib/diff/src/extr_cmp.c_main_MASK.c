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
typedef  int /*<<< orphan*/  word ;
typedef  scalar_t__ uintmax_t ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int EXIT_TROUBLE ; 
#define  HELP_OPTION 128 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  LONGINT_OK ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  NULL_DEVICE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  PACKAGE_NAME ; 
 int /*<<< orphan*/  PACKAGE_VERSION ; 
 scalar_t__ PTRDIFF_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct stat) ; 
 scalar_t__ STDIN_FILENO ; 
 scalar_t__ STDOUT_FILENO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int buf_size ; 
 scalar_t__* buffer ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ bytes ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 () ; 
 scalar_t__ comparison_type ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int exit_failure ; 
 char** file ; 
 scalar_t__* file_desc ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (scalar_t__,struct stat*) ; 
 int FUNC15 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* ignore_initial ; 
 int /*<<< orphan*/  FUNC16 (int*,char***) ; 
 int /*<<< orphan*/  long_options ; 
 scalar_t__ FUNC17 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int opt_print_bytes ; 
 char* optarg ; 
 int optind ; 
 char* program_name ; 
 scalar_t__ FUNC18 (struct stat*,struct stat*) ; 
 scalar_t__ FUNC19 (struct stat*,struct stat*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int,char**,char) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,struct stat*) ; 
 struct stat* stat_buf ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 scalar_t__ type_all_diffs ; 
 scalar_t__ type_status ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  valid_suffixes ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

int
FUNC32 (int argc, char **argv)
{
  int c, f, exit_status;
  size_t words_per_buffer;

  exit_failure = EXIT_TROUBLE;
  FUNC16 (&argc, &argv);
  program_name = argv[0];
  FUNC21 (LC_ALL, "");
  FUNC4 (PACKAGE, LOCALEDIR);
  FUNC26 (PACKAGE);
  FUNC6 (0);

  /* Parse command line options.  */

  while ((c = FUNC15 (argc, argv, "bci:ln:sv", long_options, 0))
	 != -1)
    switch (c)
      {
      case 'b':
      case 'c': /* 'c' is obsolescent as of diffutils 2.7.3 */
	opt_print_bytes = true;
	break;

      case 'i':
	FUNC23 (0, &optarg, ':');
	if (*optarg++ == ':')
	  FUNC23 (1, &optarg, 0);
	else if (ignore_initial[1] < ignore_initial[0])
	  ignore_initial[1] = ignore_initial[0];
	break;

      case 'l':
	FUNC22 (type_all_diffs);
	break;

      case 'n':
	{
	  uintmax_t n;
	  if (FUNC31 (optarg, 0, 0, &n, valid_suffixes) != LONGINT_OK)
	    FUNC27 ("invalid --bytes value `%s'", optarg);
	  if (n < bytes)
	    bytes = n;
	}
	break;

      case 's':
	FUNC22 (type_status);
	break;

      case 'v':
	/* TRANSLATORS: Please translate the second "o" in "Torbjorn
	   Granlund" to an o-with-umlaut (U+00F6, LATIN SMALL LETTER O
	   WITH DIAERESIS) if possible.  */
	FUNC29 (stdout, "cmp", PACKAGE_NAME, PACKAGE_VERSION,
		     FUNC3("Torbjorn Granlund"), "David MacKenzie", (char *) 0);
	FUNC7 ();
	return EXIT_SUCCESS;

      case HELP_OPTION:
	FUNC28 ();
	FUNC7 ();
	return EXIT_SUCCESS;

      default:
	FUNC27 (0, 0);
      }

  if (optind == argc)
    FUNC27 ("missing operand after `%s'", argv[argc - 1]);

  file[0] = argv[optind++];
  file[1] = optind < argc ? argv[optind++] : "-";

  for (f = 0; f < 2 && optind < argc; f++)
    {
      char *arg = argv[optind++];
      FUNC23 (f, &arg, 0);
    }

  if (optind < argc)
    FUNC27 ("extra operand `%s'", argv[optind]);

  for (f = 0; f < 2; f++)
    {
      /* If file[1] is "-", treat it first; this avoids a misdiagnostic if
	 stdin is closed and opening file[0] yields file descriptor 0.  */
      int f1 = f ^ (FUNC25 (file[1], "-") == 0);

      /* Two files with the same name and offset are identical.
	 But wait until we open the file once, for proper diagnostics.  */
      if (f && ignore_initial[0] == ignore_initial[1]
	  && FUNC12 (file[0], file[1]) == 0)
	return EXIT_SUCCESS;

      file_desc[f1] = (FUNC25 (file[f1], "-") == 0
		       ? STDIN_FILENO
		       : FUNC17 (file[f1], O_RDONLY, 0));
      if (file_desc[f1] < 0 || FUNC14 (file_desc[f1], stat_buf + f1) != 0)
	{
	  if (file_desc[f1] < 0 && comparison_type == type_status)
	    FUNC11 (EXIT_TROUBLE);
	  else
	    FUNC10 (EXIT_TROUBLE, errno, "%s", file[f1]);
	}

      FUNC20 (file_desc[f1], true);
    }

  /* If the files are links to the same inode and have the same file position,
     they are identical.  */

  if (0 < FUNC18 (&stat_buf[0], &stat_buf[1])
      && FUNC19 (&stat_buf[0], &stat_buf[1])
      && FUNC13 (0) == FUNC13 (1))
    return EXIT_SUCCESS;

  /* If output is redirected to the null device, we may assume `-s'.  */

  if (comparison_type != type_status)
    {
      struct stat outstat, nullstat;

      if (FUNC14 (STDOUT_FILENO, &outstat) == 0
	  && FUNC24 (NULL_DEVICE, &nullstat) == 0
	  && 0 < FUNC18 (&outstat, &nullstat))
	comparison_type = type_status;
    }

  /* If only a return code is needed,
     and if both input descriptors are associated with plain files,
     conclude that the files differ if they have different sizes
     and if more bytes will be compared than are in the smaller file.  */

  if (comparison_type == type_status
      && FUNC2 (stat_buf[0].st_mode)
      && FUNC2 (stat_buf[1].st_mode))
    {
      off_t s0 = stat_buf[0].st_size - FUNC13 (0);
      off_t s1 = stat_buf[1].st_size - FUNC13 (1);
      if (s0 < 0)
	s0 = 0;
      if (s1 < 0)
	s1 = 0;
      if (s0 != s1 && FUNC0 (s0, s1) < bytes)
	FUNC11 (EXIT_FAILURE);
    }

  /* Get the optimal block size of the files.  */

  buf_size = FUNC5 (FUNC1 (stat_buf[0]),
			 FUNC1 (stat_buf[1]),
			 PTRDIFF_MAX - sizeof (word));

  /* Allocate word-aligned buffers, with space for sentinels at the end.  */

  words_per_buffer = (buf_size + 2 * sizeof (word) - 1) / sizeof (word);
  buffer[0] = FUNC30 (2 * sizeof (word) * words_per_buffer);
  buffer[1] = buffer[0] + words_per_buffer;

  exit_status = FUNC9 ();

  for (f = 0; f < 2; f++)
    if (FUNC8 (file_desc[f]) != 0)
      FUNC10 (EXIT_TROUBLE, errno, "%s", file[f]);
  if (exit_status != 0  &&  comparison_type != type_status)
    FUNC7 ();
  FUNC11 (exit_status);
  return exit_status;
}