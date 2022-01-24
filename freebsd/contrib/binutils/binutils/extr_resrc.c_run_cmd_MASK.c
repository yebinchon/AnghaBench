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

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int PEXECUTE_ONE ; 
 int PEXECUTE_SEARCH ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char** FUNC5 (int) ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (char const*,int,int) ; 
 int FUNC13 (char const*,char* const*,int /*<<< orphan*/ ,char*,char**,char**,int) ; 
 int /*<<< orphan*/  program_name ; 
 int FUNC14 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16 (char *cmd, const char *redir)
{
  char *s;
  int pid, wait_status, retcode;
  int i;
  const char **argv;
  char *errmsg_fmt, *errmsg_arg;
  char *temp_base = FUNC6 ();
  int in_quote;
  char sep;
  int redir_handle = -1;
  int stdout_save = -1;

  /* Count the args.  */
  i = 0;

  for (s = cmd; *s; s++)
    if (*s == ' ')
      i++;

  i++;
  argv = FUNC5 (sizeof (char *) * (i + 3));
  i = 0;
  s = cmd;

  while (1)
    {
      while (*s == ' ' && *s != 0)
	s++;

      if (*s == 0)
	break;

      in_quote = (*s == '\'' || *s == '"');
      sep = (in_quote) ? *s++ : ' ';
      argv[i++] = s;

      while (*s != sep && *s != 0)
	s++;

      if (*s == 0)
	break;

      *s++ = 0;

      if (in_quote)
	s++;
    }
  argv[i++] = NULL;

  /* Setup the redirection.  We can't use the usual fork/exec and redirect
     since we may be running on non-POSIX Windows host.  */

  FUNC11 (stdout);
  FUNC11 (stderr);

  /* Open temporary output file.  */
  redir_handle = FUNC12 (redir, O_WRONLY | O_TRUNC | O_CREAT, 0666);
  if (redir_handle == -1)
    FUNC10 (FUNC4("can't open temporary file `%s': %s"), redir,
	   FUNC15 (errno));

  /* Duplicate the stdout file handle so it can be restored later.  */
  stdout_save = FUNC8 (STDOUT_FILENO);
  if (stdout_save == -1)
    FUNC10 (FUNC4("can't redirect stdout: `%s': %s"), redir, FUNC15 (errno));

  /* Redirect stdout to our output file.  */
  FUNC9 (redir_handle, STDOUT_FILENO);

  pid = FUNC13 (argv[0], (char * const *) argv, program_name, temp_base,
		  &errmsg_fmt, &errmsg_arg, PEXECUTE_ONE | PEXECUTE_SEARCH);

  /* Restore stdout to its previous setting.  */
  FUNC9 (stdout_save, STDOUT_FILENO);

  /* Close response file.  */
  FUNC7 (redir_handle);

  if (pid == -1)
    {
      FUNC10 (FUNC4("%s %s: %s"), errmsg_fmt, errmsg_arg, FUNC15 (errno));
      return 1;
    }

  retcode = 0;
  pid = FUNC14 (pid, &wait_status, 0);

  if (pid == -1)
    {
      FUNC10 (FUNC4("wait: %s"), FUNC15 (errno));
      retcode = 1;
    }
  else if (FUNC2 (wait_status))
    {
      FUNC10 (FUNC4("subprocess got fatal signal %d"), FUNC3 (wait_status));
      retcode = 1;
    }
  else if (FUNC1 (wait_status))
    {
      if (FUNC0 (wait_status) != 0)
	{
	  FUNC10 (FUNC4("%s exited with status %d"), cmd,
	         FUNC0 (wait_status));
	  retcode = 1;
	}
    }
  else
    retcode = 1;

  return retcode;
}