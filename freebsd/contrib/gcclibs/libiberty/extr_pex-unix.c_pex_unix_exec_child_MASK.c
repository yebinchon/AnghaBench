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
struct pex_obj {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int PEX_SEARCH ; 
 int PEX_STDERR_TO_STDOUT ; 
 int STDERR_FILE_NO ; 
 int STDIN_FILE_NO ; 
 int STDOUT_FILE_NO ; 
 char* VFORK_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 char** environ ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char const*,char* const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char* const*) ; 
 int /*<<< orphan*/  FUNC4 (struct pex_obj*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int volatile) ; 
 int FUNC6 () ; 

__attribute__((used)) static long
FUNC7 (struct pex_obj *obj, int flags, const char *executable,
		     char * const * argv, char * const * env,
                     int in, int out, int errdes,
		     int toclose, const char **errmsg, int *err)
{
  pid_t pid;

  /* We declare these to be volatile to avoid warnings from gcc about
     them being clobbered by vfork.  */
  volatile int sleep_interval;
  volatile int retries;

  sleep_interval = 1;
  pid = -1;
  for (retries = 0; retries < 4; ++retries)
    {
      pid = FUNC6 ();
      if (pid >= 0)
	break;
      FUNC5 (sleep_interval);
      sleep_interval *= 2;
    }

  switch (pid)
    {
    case -1:
      *err = errno;
      *errmsg = VFORK_STRING;
      return -1;

    case 0:
      /* Child process.  */
      if (in != STDIN_FILE_NO)
	{
	  if (FUNC1 (in, STDIN_FILE_NO) < 0)
	    FUNC4 (obj, executable, "dup2", errno);
	  if (FUNC0 (in) < 0)
	    FUNC4 (obj, executable, "close", errno);
	}
      if (out != STDOUT_FILE_NO)
	{
	  if (FUNC1 (out, STDOUT_FILE_NO) < 0)
	    FUNC4 (obj, executable, "dup2", errno);
	  if (FUNC0 (out) < 0)
	    FUNC4 (obj, executable, "close", errno);
	}
      if (errdes != STDERR_FILE_NO)
	{
	  if (FUNC1 (errdes, STDERR_FILE_NO) < 0)
	    FUNC4 (obj, executable, "dup2", errno);
	  if (FUNC0 (errdes) < 0)
	    FUNC4 (obj, executable, "close", errno);
	}
      if (toclose >= 0)
	{
	  if (FUNC0 (toclose) < 0)
	    FUNC4 (obj, executable, "close", errno);
	}
      if ((flags & PEX_STDERR_TO_STDOUT) != 0)
	{
	  if (FUNC1 (STDOUT_FILE_NO, STDERR_FILE_NO) < 0)
	    FUNC4 (obj, executable, "dup2", errno);
	}

      if (env)
        environ = (char**) env;

      if ((flags & PEX_SEARCH) != 0)
	{
	  FUNC3 (executable, argv);
	  FUNC4 (obj, executable, "execvp", errno);
	}
      else
	{
	  FUNC2 (executable, argv);
	  FUNC4 (obj, executable, "execv", errno);
	}

      /* NOTREACHED */
      return -1;

    default:
      /* Parent process.  */
      if (in != STDIN_FILE_NO)
	{
	  if (FUNC0 (in) < 0)
	    {
	      *err = errno;
	      *errmsg = "close";
	      return -1;
	    }
	}
      if (out != STDOUT_FILE_NO)
	{
	  if (FUNC0 (out) < 0)
	    {
	      *err = errno;
	      *errmsg = "close";
	      return -1;
	    }
	}
      if (errdes != STDERR_FILE_NO)
	{
	  if (FUNC0 (errdes) < 0)
	    {
	      *err = errno;
	      *errmsg = "close";
	      return -1;
	    }
	}

      return (long) pid;
    }
}