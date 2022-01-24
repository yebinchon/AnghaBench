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
 int PEXECUTE_ONE ; 
 int PEXECUTE_SEARCH ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char** FUNC6 (int) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,scalar_t__) ; 
 int FUNC11 (char const*,char* const*,int /*<<< orphan*/ ,char*,char**,char**,int) ; 
 int /*<<< orphan*/  program_name ; 
 int FUNC12 (int,int*,int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (const char *what, char *args)
{
  char *s;
  int pid, wait_status;
  int i;
  const char **argv;
  char *errmsg_fmt, *errmsg_arg;
  char *temp_base = FUNC7 ();

  FUNC9 ("run: %s %s", what, args);

  /* Count the args */
  i = 0;
  for (s = args; *s; s++)
    if (*s == ' ')
      i++;
  i++;
  argv = FUNC6 (sizeof (char *) * (i + 3));
  i = 0;
  argv[i++] = what;
  s = args;
  while (1)
    {
      while (*s == ' ')
	++s;
      argv[i++] = s;
      while (*s != ' ' && *s != 0)
	s++;
      if (*s == 0)
	break;
      *s++ = 0;
    }
  argv[i++] = NULL;

  pid = FUNC11 (argv[0], (char * const *) argv, program_name, temp_base,
		  &errmsg_fmt, &errmsg_arg, PEXECUTE_ONE | PEXECUTE_SEARCH);

  if (pid == -1)
    {
      FUNC9 (FUNC13 (errno));

      FUNC8 (errmsg_fmt, errmsg_arg);
    }

  pid = FUNC12 (pid, & wait_status, 0);

  if (pid == -1)
    {
      /* xgettext:c-format */
      FUNC8 (FUNC4("wait: %s"), FUNC13 (errno));
    }
  else if (FUNC2 (wait_status))
    {
      /* xgettext:c-format */
      FUNC8 (FUNC4("subprocess got fatal signal %d"), FUNC3 (wait_status));
    }
  else if (FUNC1 (wait_status))
    {
      if (FUNC0 (wait_status) != 0)
	/* xgettext:c-format */
	FUNC10 (FUNC4("%s exited with status %d"),
		   what, FUNC0 (wait_status));
    }
  else
    FUNC5 ();
}