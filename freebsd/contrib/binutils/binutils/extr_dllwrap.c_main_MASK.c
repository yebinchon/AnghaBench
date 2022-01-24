#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* dyn_string_t ;
struct TYPE_5__ {char* s; int length; } ;

/* Variables and functions */
#define  CYGWIN_TARGET 143 
 int EOF ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
#define  MINGW_TARGET 142 
#define  OPTION_BASE_FILE 141 
#define  OPTION_DEF 140 
#define  OPTION_DLLNAME 139 
#define  OPTION_DLLTOOL_NAME 138 
#define  OPTION_DRIVER_FLAGS 137 
#define  OPTION_DRIVER_NAME 136 
#define  OPTION_DRY_RUN 135 
#define  OPTION_EXPORT_ALL_SYMS 134 
#define  OPTION_IMAGE_BASE 133 
#define  OPTION_MNO_CYGWIN 132 
#define  OPTION_OUTPUT_EXP 131 
#define  OPTION_OUTPUT_LIB 130 
#define  OPTION_TARGET 129 
#define  OPTION_VERSION 128 
 int /*<<< orphan*/  PACKAGE ; 
 int UNKNOWN_TARGET ; 
 char* FUNC0 (char*) ; 
 char* base_file_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* cygwin_driver_flags ; 
 char* FUNC4 (char*) ; 
 char* def_file_name ; 
 int delete_base_file ; 
 int delete_def_file ; 
 int delete_exp_file ; 
 char* dll_file_name ; 
 char* dll_name ; 
 char* dlltool_name ; 
 int dontdeltemps ; 
 char* driver_name ; 
 int dry_run ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int) ; 
 char* entry_point ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char* exp_file_name ; 
 int /*<<< orphan*/  FUNC9 (int*,char***) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* generic_driver_flags ; 
 int FUNC12 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  long_options ; 
 char* mingw32_driver_flags ; 
 char* FUNC13 (char*) ; 
 void* optarg ; 
 scalar_t__ opterr ; 
 int optind ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* prog_name ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 scalar_t__ FUNC19 (char*,char) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 unsigned long FUNC21 (char*) ; 
 int FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,size_t) ; 
 char* FUNC24 (char*,char) ; 
 scalar_t__ FUNC25 (char*,char*) ; 
 char* target ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int which_target ; 
 scalar_t__ FUNC29 (size_t) ; 
 char* FUNC30 (char*) ; 

int
FUNC31 (int argc, char **argv)
{
  int c;
  int i;

  char **saved_argv = 0;
  int cmdline_len = 0;

  int export_all = 0;

  int *dlltool_arg_indices;
  int *driver_arg_indices;

  char *driver_flags = 0;
  char *output_lib_file_name = 0;

  dyn_string_t dlltool_cmdline;
  dyn_string_t driver_cmdline;

  int def_file_seen = 0;

  char *image_base_str = 0;

  prog_name = argv[0];

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC1 (PACKAGE, LOCALEDIR);
  FUNC26 (PACKAGE);

  FUNC9 (&argc, &argv);

  saved_argv = (char **) FUNC29 (argc * sizeof (char*));
  dlltool_arg_indices = (int *) FUNC29 (argc * sizeof (int));
  driver_arg_indices = (int *) FUNC29 (argc * sizeof (int));
  for (i = 0; i < argc; ++i)
    {
      size_t len = FUNC22 (argv[i]);
      char *arg = (char *) FUNC29 (len + 1);
      FUNC20 (arg, argv[i]);
      cmdline_len += len;
      saved_argv[i] = arg;
      dlltool_arg_indices[i] = 0;
      driver_arg_indices[i] = 1;
    }
  cmdline_len++;

  /* We recognize dllwrap and dlltool options, and everything else is
     passed onto the language driver (eg., to GCC). We collect options
     to dlltool and driver in dlltool_args and driver_args.  */

  opterr = 0;
  while ((c = FUNC12 (argc, argv, "nkAqve:Uho:l:L:I:",
				long_options, (int *) 0)) != EOF)
    {
      int dlltool_arg;
      int driver_arg;
      int single_word_option_value_pair;

      dlltool_arg = 0;
      driver_arg = 1;
      single_word_option_value_pair = 0;

      if (c != '?')
	{
	  /* We recognize this option, so it has to be either dllwrap or
	     dlltool option. Do not pass to driver unless it's one of the
	     generic options that are passed to all the tools (such as -v)
	     which are dealt with later.  */
	  driver_arg = 0;
	}

      /* deal with generic and dllwrap options first.  */
      switch (c)
	{
	case 'h':
	  FUNC27 (stdout, 0);
	  break;
	case 'q':
	  verbose = 0;
	  break;
	case 'v':
	  verbose = 1;
	  break;
	case OPTION_VERSION:
	  FUNC14 (prog_name);
	  break;
	case 'e':
	  entry_point = optarg;
	  break;
	case OPTION_IMAGE_BASE:
	  image_base_str = optarg;
	  break;
	case OPTION_DEF:
	  def_file_name = optarg;
	  def_file_seen = 1;
	  delete_def_file = 0;
	  break;
	case 'n':
	  dontdeltemps = 1;
	  dlltool_arg = 1;
	  break;
	case 'o':
	  dll_file_name = optarg;
	  break;
	case 'I':
	case 'l':
	case 'L':
	  driver_arg = 1;
	  break;
	case OPTION_DLLNAME:
	  dll_name = optarg;
	  break;
	case OPTION_DRY_RUN:
	  dry_run = 1;
	  break;
	case OPTION_DRIVER_NAME:
	  driver_name = optarg;
	  break;
	case OPTION_DRIVER_FLAGS:
	  driver_flags = optarg;
	  break;
	case OPTION_DLLTOOL_NAME:
	  dlltool_name = optarg;
	  break;
	case OPTION_TARGET:
	  target = optarg;
	  break;
	case OPTION_MNO_CYGWIN:
	  target = "i386-mingw32";
	  break;
	case OPTION_BASE_FILE:
	  base_file_name = optarg;
	  delete_base_file = 0;
	  break;
	case OPTION_OUTPUT_EXP:
	  exp_file_name = optarg;
	  delete_exp_file = 0;
	  break;
	case OPTION_EXPORT_ALL_SYMS:
	  export_all = 1;
	  break;
	case OPTION_OUTPUT_LIB:
	  output_lib_file_name = optarg;
	  break;
	case '?':
	  break;
	default:
	  dlltool_arg = 1;
	  break;
	}

      /* Handle passing through --option=value case.  */
      if (optarg
	  && saved_argv[optind-1][0] == '-'
	  && saved_argv[optind-1][1] == '-'
	  && FUNC19 (saved_argv[optind-1], '='))
	single_word_option_value_pair = 1;

      if (dlltool_arg)
	{
	  dlltool_arg_indices[optind-1] = 1;
	  if (optarg && ! single_word_option_value_pair)
	    {
	      dlltool_arg_indices[optind-2] = 1;
	    }
	}

      if (! driver_arg)
	{
	  driver_arg_indices[optind-1] = 0;
	  if (optarg && ! single_word_option_value_pair)
	    {
	      driver_arg_indices[optind-2] = 0;
	    }
	}
    }

  /* Sanity checks.  */
  if (! dll_name && ! dll_file_name)
    {
      FUNC28 (FUNC0("Must provide at least one of -o or --dllname options"));
      FUNC8 (1);
    }
  else if (! dll_name)
    {
      dll_name = FUNC30 (FUNC13 (dll_file_name));
    }
  else if (! dll_file_name)
    {
      dll_file_name = FUNC30 (dll_name);
    }

  /* Deduce driver-name and dlltool-name from our own.  */
  if (driver_name == NULL)
    driver_name = FUNC4 ("gcc");

  if (dlltool_name == NULL)
    dlltool_name = FUNC4 ("dlltool");

  if (! def_file_seen)
    {
      char *fileprefix = FUNC2 ();

      def_file_name = (char *) FUNC29 (FUNC22 (fileprefix) + 5);
      FUNC17 (def_file_name, "%s.def",
	       (dontdeltemps) ? FUNC13 (fileprefix) : fileprefix);
      delete_def_file = 1;
      FUNC11 (fileprefix);
      delete_def_file = 1;
      FUNC28 (FUNC0("no export definition file provided.\n\
Creating one, but that may not be what you want"));
    }

  /* Set the target platform.  */
  if (FUNC25 (target, "cygwin"))
    which_target = CYGWIN_TARGET;
  else if (FUNC25 (target, "mingw"))
    which_target = MINGW_TARGET;
  else
    which_target = UNKNOWN_TARGET;

  /* Re-create the command lines as a string, taking care to quote stuff.  */
  dlltool_cmdline = FUNC7 (cmdline_len);
  if (verbose)
    FUNC5 (dlltool_cmdline, " -v");

  FUNC5 (dlltool_cmdline, " --dllname ");
  FUNC5 (dlltool_cmdline, dll_name);

  for (i = 1; i < argc; ++i)
    {
      if (dlltool_arg_indices[i])
	{
	  char *arg = saved_argv[i];
	  int quote = (FUNC19 (arg, ' ') || FUNC19 (arg, '\t'));
	  FUNC5 (dlltool_cmdline,
	                     (quote) ? " \"" : " ");
	  FUNC5 (dlltool_cmdline, arg);
	  FUNC5 (dlltool_cmdline,
	                     (quote) ? "\"" : "");
	}
    }

  driver_cmdline = FUNC7 (cmdline_len);
  if (! driver_flags || FUNC22 (driver_flags) == 0)
    {
      switch (which_target)
	{
	case CYGWIN_TARGET:
	  driver_flags = cygwin_driver_flags;
	  break;

	case MINGW_TARGET:
	  driver_flags = mingw32_driver_flags;
	  break;

	default:
	  driver_flags = generic_driver_flags;
	  break;
	}
    }
  FUNC5 (driver_cmdline, driver_flags);
  FUNC5 (driver_cmdline, " -o ");
  FUNC5 (driver_cmdline, dll_file_name);

  if (! entry_point || FUNC22 (entry_point) == 0)
    {
      switch (which_target)
	{
	case CYGWIN_TARGET:
	  entry_point = "__cygwin_dll_entry@12";
	  break;

	case MINGW_TARGET:
	  entry_point = "_DllMainCRTStartup@12";
	  break;

	default:
	  entry_point = "_DllMain@12";
	  break;
	}
    }
  FUNC5 (driver_cmdline, " -Wl,-e,");
  FUNC5 (driver_cmdline, entry_point);
  FUNC5 (dlltool_cmdline, " --exclude-symbol=");
  FUNC5 (dlltool_cmdline,
                    (entry_point[0] == '_') ? entry_point+1 : entry_point);

  if (! image_base_str || FUNC22 (image_base_str) == 0)
    {
      char *tmpbuf = (char *) FUNC29 (sizeof ("0x12345678") + 1);
      unsigned long hash = FUNC21 (dll_file_name);
      FUNC17 (tmpbuf, "0x%.8lX", 0x60000000|((hash<<16)&0xFFC0000));
      image_base_str = tmpbuf;
    }

  FUNC5 (driver_cmdline, " -Wl,--image-base,");
  FUNC5 (driver_cmdline, image_base_str);

  if (verbose)
    {
      FUNC5 (driver_cmdline, " -v");
    }

  for (i = 1; i < argc; ++i)
    {
      if (driver_arg_indices[i])
	{
	  char *arg = saved_argv[i];
	  int quote = (FUNC19 (arg, ' ') || FUNC19 (arg, '\t'));
	  FUNC5 (driver_cmdline,
	                     (quote) ? " \"" : " ");
	  FUNC5 (driver_cmdline, arg);
	  FUNC5 (driver_cmdline,
	                     (quote) ? "\"" : "");
	}
    }

  /* Step pre-1. If no --def <EXPORT_DEF> is specified,
     then create it and then pass it on.  */

  if (! def_file_seen)
    {
      int i;
      dyn_string_t step_pre1;

      step_pre1 = FUNC7 (1024);

      FUNC5 (step_pre1, dlltool_cmdline->s);
      if (export_all)
	{
	  FUNC5 (step_pre1, " --export-all --exclude-symbol=");
	  FUNC5 (step_pre1,
	  "_cygwin_dll_entry@12,DllMainCRTStartup@12,DllMain@12,DllEntryPoint@12");
	}
      FUNC5 (step_pre1, " --output-def ");
      FUNC5 (step_pre1, def_file_name);

      for (i = 1; i < argc; ++i)
	{
	  if (driver_arg_indices[i])
	    {
	      char *arg = saved_argv[i];
	      size_t len = FUNC22 (arg);
	      if (len >= 2 && arg[len-2] == '.'
	          && (arg[len-1] == 'o' || arg[len-1] == 'a'))
		{
		  int quote = (FUNC19 (arg, ' ') || FUNC19 (arg, '\t'));
		  FUNC5 (step_pre1,
				     (quote) ? " \"" : " ");
		  FUNC5 (step_pre1, arg);
		  FUNC5 (step_pre1,
				     (quote) ? "\"" : "");
		}
	    }
	}

      if (FUNC15 (dlltool_name, step_pre1->s))
	FUNC3 (1);

      FUNC6 (step_pre1);
    }

  FUNC5 (dlltool_cmdline, " --def ");
  FUNC5 (dlltool_cmdline, def_file_name);

  if (verbose)
    {
      FUNC10 (stderr, FUNC0("DLLTOOL name    : %s\n"), dlltool_name);
      FUNC10 (stderr, FUNC0("DLLTOOL options : %s\n"), dlltool_cmdline->s);
      FUNC10 (stderr, FUNC0("DRIVER name     : %s\n"), driver_name);
      FUNC10 (stderr, FUNC0("DRIVER options  : %s\n"), driver_cmdline->s);
    }

  /* Step 1. Call GCC/LD to create base relocation file. If using GCC, the
     driver command line will look like the following:
    
        % gcc -Wl,--dll --Wl,--base-file,foo.base [rest of command line]
    
     If the user does not specify a base name, create temporary one that
     is deleted at exit.  */

  if (! base_file_name)
    {
      char *fileprefix = FUNC2 ();
      base_file_name = (char *) FUNC29 (FUNC22 (fileprefix) + 6);
      FUNC17 (base_file_name, "%s.base",
	       (dontdeltemps) ? FUNC13 (fileprefix) : fileprefix);
      delete_base_file = 1;
      FUNC11 (fileprefix);
    }

  {
    int quote;

    dyn_string_t step1 = FUNC7 (driver_cmdline->length
					 + FUNC22 (base_file_name)
					 + 20);
    FUNC5 (step1, "-Wl,--base-file,");
    quote = (FUNC19 (base_file_name, ' ')
	     || FUNC19 (base_file_name, '\t'));
    FUNC5 (step1,
	               (quote) ? "\"" : "");
    FUNC5 (step1, base_file_name);
    FUNC5 (step1,
	               (quote) ? "\"" : "");
    if (driver_cmdline->length)
      {
	FUNC5 (step1, " ");
	FUNC5 (step1, driver_cmdline->s);
      }

    if (FUNC15 (driver_name, step1->s))
      FUNC3 (1);

    FUNC6 (step1);
  }

  /* Step 2. generate the exp file by running dlltool.
     dlltool command line will look like the following:
    
        % dlltool -Wl,--dll --Wl,--base-file,foo.base [rest of command line]
    
     If the user does not specify a base name, create temporary one that
     is deleted at exit.  */

  if (! exp_file_name)
    {
      char *p = FUNC24 (dll_name, '.');
      size_t prefix_len = (p) ? (size_t) (p - dll_name) : FUNC22 (dll_name);

      exp_file_name = (char *) FUNC29 (prefix_len + 4 + 1);
      FUNC23 (exp_file_name, dll_name, prefix_len);
      exp_file_name[prefix_len] = '\0';
      FUNC18 (exp_file_name, ".exp");
      delete_exp_file = 1;
    }

  {
    int quote;

    dyn_string_t step2 = FUNC7 (dlltool_cmdline->length
					 + FUNC22 (base_file_name)
					 + FUNC22 (exp_file_name)
				         + 20);

    FUNC5 (step2, "--base-file ");
    quote = (FUNC19 (base_file_name, ' ')
	     || FUNC19 (base_file_name, '\t'));
    FUNC5 (step2,
	               (quote) ? "\"" : "");
    FUNC5 (step2, base_file_name);
    FUNC5 (step2,
	               (quote) ? "\" " : " ");

    FUNC5 (step2, "--output-exp ");
    quote = (FUNC19 (exp_file_name, ' ')
	     || FUNC19 (exp_file_name, '\t'));
    FUNC5 (step2,
	               (quote) ? "\"" : "");
    FUNC5 (step2, exp_file_name);
    FUNC5 (step2,
	               (quote) ? "\"" : "");

    if (dlltool_cmdline->length)
      {
	FUNC5 (step2, " ");
	FUNC5 (step2, dlltool_cmdline->s);
      }

    if (FUNC15 (dlltool_name, step2->s))
      FUNC3 (1);

    FUNC6 (step2);
  }

  /*
   * Step 3. Call GCC/LD to again, adding the exp file this time.
   * driver command line will look like the following:
   *
   *    % gcc -Wl,--dll --Wl,--base-file,foo.base foo.exp [rest ...]
   */

  {
    int quote;

    dyn_string_t step3 = FUNC7 (driver_cmdline->length
					 + FUNC22 (exp_file_name)
					 + FUNC22 (base_file_name)
				         + 20);
    FUNC5 (step3, "-Wl,--base-file,");
    quote = (FUNC19 (base_file_name, ' ')
	     || FUNC19 (base_file_name, '\t'));
    FUNC5 (step3,
	               (quote) ? "\"" : "");
    FUNC5 (step3, base_file_name);
    FUNC5 (step3,
	               (quote) ? "\" " : " ");

    quote = (FUNC19 (exp_file_name, ' ')
	     || FUNC19 (exp_file_name, '\t'));
    FUNC5 (step3,
	               (quote) ? "\"" : "");
    FUNC5 (step3, exp_file_name);
    FUNC5 (step3,
	               (quote) ? "\"" : "");

    if (driver_cmdline->length)
      {
	FUNC5 (step3, " ");
	FUNC5 (step3, driver_cmdline->s);
      }

    if (FUNC15 (driver_name, step3->s))
      FUNC3 (1);

    FUNC6 (step3);
  }


  /*
   * Step 4. Run DLLTOOL again using the same command line.
   */

  {
    int quote;
    dyn_string_t step4 = FUNC7 (dlltool_cmdline->length
					 + FUNC22 (base_file_name)
					 + FUNC22 (exp_file_name)
				         + 20);

    FUNC5 (step4, "--base-file ");
    quote = (FUNC19 (base_file_name, ' ')
	     || FUNC19 (base_file_name, '\t'));
    FUNC5 (step4,
	               (quote) ? "\"" : "");
    FUNC5 (step4, base_file_name);
    FUNC5 (step4,
	               (quote) ? "\" " : " ");

    FUNC5 (step4, "--output-exp ");
    quote = (FUNC19 (exp_file_name, ' ')
	     || FUNC19 (exp_file_name, '\t'));
    FUNC5 (step4,
	               (quote) ? "\"" : "");
    FUNC5 (step4, exp_file_name);
    FUNC5 (step4,
	               (quote) ? "\"" : "");

    if (dlltool_cmdline->length)
      {
	FUNC5 (step4, " ");
	FUNC5 (step4, dlltool_cmdline->s);
      }

    if (output_lib_file_name)
      {
	FUNC5 (step4, " --output-lib ");
	FUNC5 (step4, output_lib_file_name);
      }

    if (FUNC15 (dlltool_name, step4->s))
      FUNC3 (1);

    FUNC6 (step4);
  }


  /*
   * Step 5. Link it all together and be done with it.
   * driver command line will look like the following:
   *
   *    % gcc -Wl,--dll foo.exp [rest ...]
   *
   */

  {
    int quote;

    dyn_string_t step5 = FUNC7 (driver_cmdline->length
					 + FUNC22 (exp_file_name)
				         + 20);
    quote = (FUNC19 (exp_file_name, ' ')
	     || FUNC19 (exp_file_name, '\t'));
    FUNC5 (step5,
	               (quote) ? "\"" : "");
    FUNC5 (step5, exp_file_name);
    FUNC5 (step5,
	               (quote) ? "\"" : "");

    if (driver_cmdline->length)
      {
	FUNC5 (step5, " ");
	FUNC5 (step5, driver_cmdline->s);
      }

    if (FUNC15 (driver_name, step5->s))
      FUNC3 (1);

    FUNC6 (step5);
  }

  FUNC3 (0);

  return 0;
}