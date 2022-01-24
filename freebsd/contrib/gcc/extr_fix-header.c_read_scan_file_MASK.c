#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct symbol_list {scalar_t__ names; } ;
struct fn_decl {int dummy; } ;
typedef  int /*<<< orphan*/  getchar_call ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef  TYPE_1__ cpp_token ;
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_9__ {int inhibit_warnings; int inhibit_errors; } ;
typedef  TYPE_2__ cpp_options ;
struct TYPE_10__ {int /*<<< orphan*/  file_change; } ;
typedef  TYPE_3__ cpp_callbacks ;

/* Variables and functions */
 int /*<<< orphan*/  ANSI_SYMBOL ; 
 int /*<<< orphan*/  BRACKET ; 
 int /*<<< orphan*/  CLK_GNUC89 ; 
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 scalar_t__ CPP_EOF ; 
 int /*<<< orphan*/  FATAL_EXIT_CODE ; 
 int /*<<< orphan*/  LC_RENAME ; 
 int /*<<< orphan*/  FUNC0 (struct fn_decl*) ; 
 int /*<<< orphan*/  FUNC1 (struct fn_decl*) ; 
 int /*<<< orphan*/  FUNC2 (struct fn_decl*) ; 
 int /*<<< orphan*/  SUCCESS_EXIT_CODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  cb_file_change ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (TYPE_1__ const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* inc_filename ; 
 int /*<<< orphan*/  line_table ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 struct fn_decl* FUNC23 (char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ partial_count ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ required_other ; 
 scalar_t__ required_unseen_count ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  scan_file_obstack ; 
 scalar_t__ special_file_handling ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ stdio_h ; 
 struct symbol_list* symbol_table ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 

__attribute__((used)) static void
FUNC28 (char *in_fname, int argc, char **argv)
{
  cpp_reader *scan_in;
  cpp_callbacks *cb;
  cpp_options *options;
  struct fn_decl *fn;
  int i, strings_processed;
  struct symbol_list *cur_symbols;

  FUNC24 (&scan_file_obstack);

  FUNC22 (&line_table);
  scan_in = FUNC7 (CLK_GNUC89, NULL, &line_table);
  cb = FUNC11 (scan_in);
  cb->file_change = cb_file_change;

  /* We are going to be scanning a header file out of its proper context,
     so ignore warnings and errors.  */
  options = FUNC12 (scan_in);
  options->inhibit_warnings = 1;
  options->inhibit_errors = 1;
  FUNC17 (scan_in);

  if (!FUNC19 (scan_in, in_fname))
    FUNC20 (FATAL_EXIT_CODE);

  FUNC6 (scan_in, LC_RENAME, "<built-in>");
  FUNC15 (scan_in, true);
  FUNC6 (scan_in, LC_RENAME, in_fname);

  /* Process switches after builtins so -D can override them.  */
  for (i = 0; i < argc; i += strings_processed)
    {
      strings_processed = 0;
      if (argv[i][0] == '-')
	{
	  if (argv[i][1] == 'I')
	    {
	      if (argv[i][2] != '\0')
		{
		  strings_processed = 1;
		  FUNC3 (FUNC27 (argv[i] + 2), BRACKET, false, false);
		}
	      else if (i + 1 != argc)
		{
		  strings_processed = 2;
		  FUNC3 (FUNC27 (argv[i + 1]), BRACKET, false, false);
		}
	    }
	  else if (argv[i][1] == 'D')
	    {
	      if (argv[i][2] != '\0')
		strings_processed = 1, FUNC8 (scan_in, argv[i] + 2);
	      else if (i + 1 != argc)
		strings_processed = 2, FUNC8 (scan_in, argv[i + 1]);
	    }
	}

      if (strings_processed == 0)
	break;
    }

  if (i < argc)
    FUNC9 (scan_in, CPP_DL_ERROR, "invalid option `%s'", argv[i]);
  if (FUNC10 (scan_in))
    FUNC20 (FATAL_EXIT_CODE);

  FUNC25 (scan_in, NULL /* sysroot */, NULL /* iprefix */,
			   NULL /* imultilib */, true /* stdinc */,
			   false /* cxx_stdinc */, false /* verbose */);

  /* We are scanning a system header, so mark it as such.  */
  FUNC16 (scan_in, 1, 0);

  FUNC26 (scan_in, argc, argv);
  for (cur_symbols = &symbol_table[0]; cur_symbols->names; cur_symbols++)
    FUNC5 (scan_in, cur_symbols->names);

  /* Traditionally, getc and putc are defined in terms of _filbuf and _flsbuf.
     If so, those functions are also required.  */
  if (special_file_handling == stdio_h
      && (fn = FUNC23 ("_filbuf", 7)) != NULL)
    {
      unsigned char getchar_call[] = "getchar();\n";
      int seen_filbuf = 0;

      /* Scan the macro expansion of "getchar();".  */
      FUNC18 (scan_in, getchar_call, sizeof(getchar_call) - 1,
		       /* from_stage3 */ true);
      for (;;)
	{
	  const cpp_token *t = FUNC13 (scan_in);

	  if (t->type == CPP_EOF)
	    break;
	  else if (FUNC14 (t, "_filbuf"))
	    seen_filbuf++;
	}

      if (seen_filbuf)
	{
	  int need_filbuf = !FUNC1 (fn) && !FUNC0 (fn);
	  struct fn_decl *flsbuf_fn = FUNC23 ("_flsbuf", 7);
	  int need_flsbuf
	    = flsbuf_fn && !FUNC1 (flsbuf_fn) && !FUNC0 (flsbuf_fn);

	  /* Append "_filbuf" and/or "_flsbuf" to the required functions.  */
	  if (need_filbuf + need_flsbuf)
	    {
	      const char *new_list;
	      if (need_filbuf)
		FUNC2 (fn);
	      if (need_flsbuf)
		FUNC2 (flsbuf_fn);
	      if (need_flsbuf && need_filbuf)
		new_list = "_filbuf\0_flsbuf\0";
	      else if (need_flsbuf)
		new_list = "_flsbuf\0";
	      else /* if (need_flsbuf) */
		new_list = "_filbuf\0";
	      FUNC4 (ANSI_SYMBOL, new_list);
	      required_unseen_count += need_filbuf + need_flsbuf;
	    }
	}
    }

  if (required_unseen_count + partial_count + required_other == 0)
    {
      if (verbose)
	FUNC21 (stderr, "%s: OK, nothing needs to be done.\n", inc_filename);
      FUNC20 (SUCCESS_EXIT_CODE);
    }
  if (!verbose)
    FUNC21 (stderr, "%s: fixing %s\n", progname, inc_filename);
  else
    {
      if (required_unseen_count)
	FUNC21 (stderr, "%s: %ld missing function declarations.\n",
		 inc_filename, required_unseen_count);
      if (partial_count)
	FUNC21 (stderr, "%s: %ld non-prototype function declarations.\n",
		 inc_filename, partial_count);
    }
}