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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FALSE ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* ar_truncate ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ counted_name_counter ; 
 void* counted_name_mode ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC10 (int*,char***) ; 
 int /*<<< orphan*/  extract_file ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* full_pathname ; 
 int is_ranlib ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int mri_mode ; 
 int newer_only ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/ * FUNC16 (char*,char*) ; 
 void* operation_alters_arch ; 
 int /*<<< orphan*/ * output_filename ; 
 scalar_t__ pos_after ; 
 scalar_t__ pos_before ; 
 scalar_t__ pos_default ; 
 char* posname ; 
 scalar_t__ postype ; 
 int preserve_dates ; 
 int /*<<< orphan*/  print_contents ; 
 int /*<<< orphan*/  print_descr ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 char* program_name ; 
 int FUNC18 (char*) ; 
 int FUNC19 (char*) ; 
 int /*<<< orphan*/  remove_output ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char**,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int silent_create ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 int FUNC24 (char*) ; 
 char* FUNC25 (char*,char) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int verbose ; 
 int write_armap ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 

int
FUNC31 (int argc, char **argv)
{
  char *arg_ptr;
  char c;
  enum
    {
      none = 0, delete, replace, print_table,
      print_files, extract, move, quick_append
    } operation = none;
  int arg_index;
  char **files;
  int file_count;
  char *inarch_filename;
  int show_version;
  int i;
  int do_posix = 0;

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC8 (PACKAGE, LOCALEDIR);
  FUNC26 (PACKAGE);

  program_name = argv[0];
  FUNC30 (program_name);

  FUNC10 (&argc, &argv);

  if (is_ranlib < 0)
    {
      char *temp;

      temp = FUNC25 (program_name, '/');
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
      {
	/* We could have foo/bar\\baz, or foo\\bar, or d:bar.  */
	char *bslash = strrchr (program_name, '\\');
	if (temp == NULL || (bslash != NULL && bslash > temp))
	  temp = bslash;
	if (temp == NULL && program_name[0] != '\0' && program_name[1] == ':')
	  temp = program_name + 1;
      }
#endif
      if (temp == NULL)
	temp = program_name;
      else
	++temp;
      if (FUNC24 (temp) >= 6
	  && FUNC2 (temp + FUNC24 (temp) - 6, "ranlib") == 0)
	is_ranlib = 1;
      else
	is_ranlib = 0;
    }

  if (argc > 1 && argv[1][0] == '-')
    {
      if (FUNC23 (argv[1], "--help") == 0)
	FUNC27 (1);
      else if (FUNC23 (argv[1], "--version") == 0)
	{
	  if (is_ranlib)
	    FUNC17 ("ranlib");
	  else
	    FUNC17 ("ar");
	}
    }

  FUNC3 (program_name, 0);

  FUNC7 ();
  FUNC21 ();

  show_version = 0;

  FUNC28 (remove_output);

  for (i = 1; i < argc; i++)
    if (! FUNC5 (argv[i]))
      break;
  argv += (i - 1);
  argc -= (i - 1);

  if (is_ranlib)
    {
      int status = 0;
      bfd_boolean touch = FALSE;

      if (argc < 2
	  || FUNC23 (argv[1], "--help") == 0
	  || FUNC23 (argv[1], "-h") == 0
	  || FUNC23 (argv[1], "-H") == 0)
	FUNC27 (0);
      if (FUNC23 (argv[1], "-V") == 0
	  || FUNC23 (argv[1], "-v") == 0
	  || FUNC0 (argv[1], "--v"))
	FUNC17 ("ranlib");
      arg_index = 1;
      if (FUNC23 (argv[1], "-t") == 0)
	{
	  ++arg_index;
	  touch = TRUE;
	}
      while (arg_index < argc)
	{
	  if (! touch)
	    status |= FUNC18 (argv[arg_index]);
	  else
	    status |= FUNC19 (argv[arg_index]);
	  ++arg_index;
	}
      FUNC29 (status);
    }

  if (argc == 2 && FUNC23 (argv[1], "-M") == 0)
    {
      FUNC14 ();
      FUNC29 (0);
    }

  if (argc < 2)
    FUNC27 (0);

  arg_index = 1;
  arg_ptr = argv[arg_index];

  if (*arg_ptr == '-')
    {
      /* When the first option starts with '-' we support POSIX-compatible
	 option parsing.  */
      do_posix = 1;
      ++arg_ptr;			/* compatibility */
    }

  do
    {
      while ((c = *arg_ptr++) != '\0')
	{
	  switch (c)
	    {
	    case 'd':
	    case 'm':
	    case 'p':
	    case 'q':
	    case 'r':
	    case 't':
	    case 'x':
	      if (operation != none)
		FUNC11 (FUNC4("two different operation options specified"));
	      switch (c)
		{
		case 'd':
		  operation = delete;
		  operation_alters_arch = TRUE;
		  break;
		case 'm':
		  operation = move;
		  operation_alters_arch = TRUE;
		  break;
		case 'p':
		  operation = print_files;
		  break;
		case 'q':
		  operation = quick_append;
		  operation_alters_arch = TRUE;
		  break;
		case 'r':
		  operation = replace;
		  operation_alters_arch = TRUE;
		  break;
		case 't':
		  operation = print_table;
		  break;
		case 'x':
		  operation = extract;
		  break;
		}
	    case 'l':
	      break;
	    case 'c':
	      silent_create = 1;
	      break;
	    case 'o':
	      preserve_dates = 1;
	      break;
	    case 'V':
	      show_version = TRUE;
	      break;
	    case 's':
	      write_armap = 1;
	      break;
	    case 'S':
	      write_armap = -1;
	      break;
	    case 'u':
	      newer_only = 1;
	      break;
	    case 'v':
	      verbose = 1;
	      break;
	    case 'a':
	      postype = pos_after;
	      break;
	    case 'b':
	      postype = pos_before;
	      break;
	    case 'i':
	      postype = pos_before;
	      break;
	    case 'M':
	      mri_mode = 1;
	      break;
	    case 'N':
	      counted_name_mode = TRUE;
	      break;
	    case 'f':
	      ar_truncate = TRUE;
	      break;
	    case 'P':
	      full_pathname = TRUE;
	      break;
	    default:
	      /* xgettext:c-format */
	      FUNC15 (FUNC4("illegal option -- %c"), c);
	      FUNC27 (0);
	    }
	}

      /* With POSIX-compatible option parsing continue with the next
	 argument if it starts with '-'.  */
      if (do_posix && arg_index + 1 < argc && argv[arg_index + 1][0] == '-')
	arg_ptr = argv[++arg_index] + 1;
      else
	do_posix = 0;
    }
  while (do_posix);

  if (show_version)
    FUNC17 ("ar");

  ++arg_index;
  if (arg_index >= argc)
    FUNC27 (0);

  if (mri_mode)
    {
      FUNC14 ();
    }
  else
    {
      bfd *arch;

      /* We don't use do_quick_append any more.  Too many systems
	 expect ar to always rebuild the symbol table even when q is
	 used.  */

      /* We can't write an armap when using ar q, so just do ar r
         instead.  */
      if (operation == quick_append && write_armap)
	operation = replace;

      if ((operation == none || operation == print_table)
	  && write_armap == 1)
	FUNC29 (FUNC18 (argv[arg_index]));

      if (operation == none)
	FUNC11 (FUNC4("no operation specified"));

      if (newer_only && operation != replace)
	FUNC11 (FUNC4("`u' is only meaningful with the `r' option."));

      if (postype != pos_default)
	posname = argv[arg_index++];

      if (counted_name_mode)
	{
	  if (operation != extract && operation != delete)
	     FUNC11 (FUNC4("`N' is only meaningful with the `x' and `d' options."));
	  counted_name_counter = FUNC6 (argv[arg_index++]);
	  if (counted_name_counter <= 0)
	    FUNC11 (FUNC4("Value for `N' must be positive."));
	}

      inarch_filename = argv[arg_index++];

      files = arg_index < argc ? argv + arg_index : NULL;
      file_count = argc - arg_index;

      arch = FUNC16 (inarch_filename,
			  files == NULL ? (char *) NULL : files[0]);

      switch (operation)
	{
	case print_table:
	  FUNC12 (arch, print_descr, files, file_count);
	  break;

	case print_files:
	  FUNC12 (arch, print_contents, files, file_count);
	  break;

	case extract:
	  FUNC12 (arch, extract_file, files, file_count);
	  break;

	case delete:
	  if (files != NULL)
	    FUNC9 (arch, files);
	  else
	    output_filename = NULL;
	  break;

	case move:
	  if (files != NULL)
	    FUNC13 (arch, files);
	  else
	    output_filename = NULL;
	  break;

	case replace:
	case quick_append:
	  if (files != NULL || write_armap > 0)
	    FUNC20 (arch, files, operation == quick_append);
	  else
	    output_filename = NULL;
	  break;

	  /* Shouldn't happen! */
	default:
	  /* xgettext:c-format */
	  FUNC11 (FUNC4("internal error -- this option not implemented"));
	}
    }

  FUNC1 (program_name);

  FUNC29 (0);
  return 0;
}