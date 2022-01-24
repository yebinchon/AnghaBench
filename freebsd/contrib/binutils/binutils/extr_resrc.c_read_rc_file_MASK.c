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
typedef  int /*<<< orphan*/  rc_res_directory ;

/* Variables and functions */
 char* DEFAULT_PREPROCESSOR ; 
 char const* EXECUTABLE_SUFFIX ; 
 int /*<<< orphan*/  ISTREAM_FILE ; 
 int /*<<< orphan*/  ISTREAM_PIPE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ cpp_pipe ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/ * fontdirs ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  istream_type ; 
 scalar_t__ FUNC4 (char*,char*,int,char const*,char const*) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* program_name ; 
 char* rc_filename ; 
 int rc_lineno ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * resources ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char const*,char const*,char const*,char const*,char const*) ; 
 int FUNC9 (char const*) ; 
 char* FUNC10 (int) ; 
 char* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

rc_res_directory *
FUNC13 (const char *filename, const char *preprocessor,
	      const char *preprocargs, int language, int use_temp_file)
{
  char *cmd;
  const char *fnquotes = (FUNC2 (filename) ? "\"" : "");

  istream_type = (use_temp_file) ? ISTREAM_FILE : ISTREAM_PIPE;

  if (preprocargs == NULL)
    preprocargs = "";
  if (filename == NULL)
    filename = "-";

  if (preprocessor)
    {
      cmd = FUNC10 (FUNC9 (preprocessor)
		     + FUNC9 (preprocargs)
		     + FUNC9 (filename)
		     + FUNC9 (fnquotes) * 2
		     + 10);
      FUNC8 (cmd, "%s %s %s%s%s", preprocessor, preprocargs,
	       fnquotes, filename, fnquotes);

      cpp_pipe = FUNC5 (cmd);
    }
  else
    {
      char *dash, *slash, *cp;

      preprocessor = DEFAULT_PREPROCESSOR;

      cmd = FUNC10 (FUNC9 (program_name)
		     + FUNC9 (preprocessor)
		     + FUNC9 (preprocargs)
		     + FUNC9 (filename)
		     + FUNC9 (fnquotes) * 2
#ifdef HAVE_EXECUTABLE_SUFFIX
		     + strlen (EXECUTABLE_SUFFIX)
#endif
		     + 10);


      dash = slash = 0;
      for (cp = program_name; *cp; cp++)
	{
	  if (*cp == '-')
	    dash = cp;
	  if (
#if defined (__DJGPP__) || defined (__CYGWIN__) || defined(_WIN32)
	      *cp == ':' || *cp == '\\' ||
#endif
	      *cp == '/')
	    {
	      slash = cp;
	      dash = 0;
	    }
	}

      cpp_pipe = 0;

      if (dash)
	{
	  /* First, try looking for a prefixed gcc in the windres
	     directory, with the same prefix as windres */

	  cpp_pipe = FUNC4 (cmd, program_name, dash - program_name + 1,
				       preprocargs, filename);
	}

      if (slash && ! cpp_pipe)
	{
	  /* Next, try looking for a gcc in the same directory as
             that windres */

	  cpp_pipe = FUNC4 (cmd, program_name, slash - program_name + 1,
				       preprocargs, filename);
	}

      if (! cpp_pipe)
	{
	  /* Sigh, try the default */

	  cpp_pipe = FUNC4 (cmd, "", 0, preprocargs, filename);
	}

    }

  FUNC3 (cmd);

  rc_filename = FUNC11 (filename);
  rc_lineno = 1;
  if (language != -1)
    FUNC7 (language);
  FUNC12 ();
  FUNC6 ();

  FUNC0 ();

  if (fontdirs != NULL)
    FUNC1 ();

  FUNC3 (rc_filename);
  rc_filename = NULL;

  return resources;
}