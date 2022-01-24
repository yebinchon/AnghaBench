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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct diff_block {int dummy; } ;
struct diff3_block {int dummy; } ;

/* Variables and functions */
#define  DIFF_PROGRAM_OPTION 130 
 int /*<<< orphan*/  EISDIR ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  EXIT_TROUBLE ; 
 size_t FILE0 ; 
 size_t FILE1 ; 
 size_t FILEC ; 
#define  HELP_OPTION 129 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  PACKAGE_NAME ; 
 int /*<<< orphan*/  PACKAGE_VERSION ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_DFL ; 
#define  STRIP_TRAILING_CR_OPTION 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* diff_program ; 
 int edscript ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int exit_failure ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int finalwrite ; 
 int flagging ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int initial_tab ; 
 int /*<<< orphan*/  FUNC10 (int*,char***) ; 
 int /*<<< orphan*/  longopts ; 
 struct diff3_block* FUNC11 (struct diff_block*,struct diff_block*) ; 
 int merge ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct diff3_block*,int*,int*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct diff3_block*,int*,int*,char*,char*,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct diff3_block*,int*,int*,char*,char*,char*) ; 
 int overlap_only ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 struct diff_block* FUNC16 (char*,char*,struct diff_block**) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int show_2nd ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int simple_only ; 
 scalar_t__ FUNC19 (char*,struct stat*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int strip_trailing_cr ; 
 int text ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC25 (int argc, char **argv)
{
  int c, i;
  int common;
  int mapping[3];
  int rev_mapping[3];
  int incompat = 0;
  bool conflicts_found;
  struct diff_block *thread0, *thread1, *last_block;
  struct diff3_block *diff3;
  int tag_count = 0;
  char *tag_strings[3];
  char *commonname;
  char **file;
  struct stat statb;

  exit_failure = 2;
  FUNC10 (&argc, &argv);
  program_name = argv[0];
  FUNC17 (LC_ALL, "");
  FUNC1 (PACKAGE, LOCALEDIR);
  FUNC21 (PACKAGE);
  FUNC2 (0);

  while ((c = FUNC9 (argc, argv, "aeimvx3AEL:TX", longopts, 0)) != -1)
    {
      switch (c)
	{
	case 'a':
	  text = true;
	  break;
	case 'A':
	  show_2nd = true;
	  flagging = true;
	  incompat++;
	  break;
	case 'x':
	  overlap_only = true;
	  incompat++;
	  break;
	case '3':
	  simple_only = true;
	  incompat++;
	  break;
	case 'i':
	  finalwrite = true;
	  break;
	case 'm':
	  merge = true;
	  break;
	case 'X':
	  overlap_only = true;
	  /* Fall through.  */
	case 'E':
	  flagging = true;
	  /* Fall through.  */
	case 'e':
	  incompat++;
	  break;
	case 'T':
	  initial_tab = true;
	  break;
	case STRIP_TRAILING_CR_OPTION:
	  strip_trailing_cr = true;
	  break;
	case 'v':
	  FUNC24 (stdout, "diff3", PACKAGE_NAME, PACKAGE_VERSION,
		       "Randy Smith", (char *) 0);
	  FUNC3 ();
	  return EXIT_SUCCESS;
	case DIFF_PROGRAM_OPTION:
	  diff_program = optarg;
	  break;
	case HELP_OPTION:
	  FUNC23 ();
	  FUNC3 ();
	  return EXIT_SUCCESS;
	case 'L':
	  /* Handle up to three -L options.  */
	  if (tag_count < 3)
	    {
	      tag_strings[tag_count++] = optarg;
	      break;
	    }
	  FUNC22 ("too many file label options", 0);
	default:
	  FUNC22 (0, 0);
	}
    }

  edscript = incompat & ~merge;  /* -AeExX3 without -m implies ed script.  */
  show_2nd |= ~incompat & merge;  /* -m without -AeExX3 implies -A.  */
  flagging |= ~incompat & merge;

  if (incompat > 1  /* Ensure at most one of -AeExX3.  */
      || finalwrite & merge /* -i -m would rewrite input file.  */
      || (tag_count && ! flagging)) /* -L requires one of -AEX.  */
    FUNC22 ("incompatible options", 0);

  if (argc - optind != 3)
    {
      if (argc - optind < 3)
	FUNC22 ("missing operand after `%s'", argv[argc - 1]);
      else
	FUNC22 ("extra operand `%s'", argv[optind + 3]);
    }

  file = &argv[optind];

  for (i = tag_count; i < 3; i++)
    tag_strings[i] = file[i];

  /* Always compare file1 to file2, even if file2 is "-".
     This is needed for -mAeExX3.  Using the file0 as
     the common file would produce wrong results, because if the
     file0-file1 diffs didn't line up with the file0-file2 diffs
     (which is entirely possible since we don't use diff's -n option),
     diff3 might report phantom changes from file1 to file2.

     Also, try to compare file0 to file1, because this is where
     changes are expected to come from.  Diffing between these pairs
     of files is more likely to avoid phantom changes from file0 to file1.

     Historically, the default common file was file2, so some older
     applications (e.g. Emacs ediff) used file2 as the ancestor.  So,
     for compatibility, if this is a 3-way diff (not a merge or
     edscript), prefer file2 as the common file.  */

  common = 2 - (edscript | merge);

  if (FUNC20 (file[common], "-") == 0)
    {
      /* Sigh.  We've got standard input as the common file.  We can't
	 call diff twice on stdin.  Use the other arg as the common
	 file instead.  */
      common = 3 - common;
      if (FUNC20 (file[0], "-") == 0 || FUNC20 (file[common], "-") == 0)
	FUNC6 ("`-' specified for more than one input file");
    }

  mapping[0] = 0;
  mapping[1] = 3 - common;
  mapping[2] = common;

  for (i = 0; i < 3; i++)
    rev_mapping[mapping[i]] = i;

  for (i = 0; i < 3; i++)
    if (FUNC20 (file[i], "-") != 0)
      {
	if (FUNC19 (file[i], &statb) < 0)
	  FUNC15 (file[i]);
	else if (FUNC0 (statb.st_mode))
	  FUNC4 (EXIT_TROUBLE, EISDIR, "%s", file[i]);
      }

#ifdef SIGCHLD
  /* System V fork+wait does not work if SIGCHLD is ignored.  */
  signal (SIGCHLD, SIG_DFL);
#endif

  /* Invoke diff twice on two pairs of input files, combine the two
     diffs, and output them.  */

  commonname = file[rev_mapping[FILEC]];
  thread1 = FUNC16 (file[rev_mapping[FILE1]], commonname, &last_block);
  thread0 = FUNC16 (file[rev_mapping[FILE0]], commonname, &last_block);
  diff3 = FUNC11 (thread0, thread1);
  if (edscript)
    conflicts_found
      = FUNC13 (stdout, diff3, mapping, rev_mapping,
			       tag_strings[0], tag_strings[1], tag_strings[2]);
  else if (merge)
    {
      if (! FUNC8 (file[rev_mapping[FILE0]], "r", stdin))
	FUNC15 (file[rev_mapping[FILE0]]);
      conflicts_found
	= FUNC14 (stdin, stdout, diff3, mapping, rev_mapping,
			      tag_strings[0], tag_strings[1], tag_strings[2]);
      if (FUNC7 (stdin))
	FUNC6 ("read failed");
    }
  else
    {
      FUNC12 (stdout, diff3, mapping, rev_mapping);
      conflicts_found = false;
    }

  FUNC3 ();
  FUNC5 (conflicts_found);
  return conflicts_found;
}