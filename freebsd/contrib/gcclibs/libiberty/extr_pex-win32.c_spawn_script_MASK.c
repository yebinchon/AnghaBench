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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  LPSTARTUPINFO ;
typedef  int /*<<< orphan*/  LPPROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  _O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ ,char* const*,char* const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long
FUNC11 (const char *executable, char *const *argv,
              char* const *env,
	      DWORD dwCreationFlags,
	      LPSTARTUPINFO si,
	      LPPROCESS_INFORMATION pi)
{
  int pid = -1;
  int save_errno = errno;
  int fd = FUNC1 (executable, _O_RDONLY);

  if (fd >= 0)
    {
      char buf[MAX_PATH + 5];
      int len = FUNC2 (fd, buf, sizeof (buf) - 1);
      FUNC0 (fd);
      if (len > 3)
	{
	  char *eol;
	  buf[len] = '\0';
	  eol = FUNC7 (buf, '\n');
	  if (eol && FUNC8 (buf, "#!", 2) == 0)
	    {
	      char *executable1;
	      const char ** avhere = (const char **) --argv;
	      do
		*eol = '\0';
	      while (*--eol == '\r' || *eol == ' ' || *eol == '\t');
	      for (executable1 = buf + 2; *executable1 == ' ' || *executable1 == '\t'; executable1++)
		continue;

	      FUNC3 (executable1);
	      *avhere = executable1;
#ifndef USE_MINGW_MSYS
	      executable = FUNC9 (executable1, '\\') + 1;
	      if (!executable)
		executable = executable1;
	      pid = FUNC10 (executable, TRUE, argv, env,
				 dwCreationFlags, si, pi);
#else
	      if (strchr (executable1, '\\') == NULL)
		pid = win32_spawn (executable1, TRUE, argv, env,
				   dwCreationFlags, si, pi);
	      else if (executable1[0] != '\\')
		pid = win32_spawn (executable1, FALSE, argv, env,
				   dwCreationFlags, si, pi);
	      else
		{
		  const char *newex = mingw_rootify (executable1);
		  *avhere = newex;
		  pid = win32_spawn (newex, FALSE, argv, env,
				     dwCreationFlags, si, pi);
		  if (executable1 != newex)
		    free ((char *) newex);
		  if (pid < 0)
		    {
		      newex = msys_rootify (executable1);
		      if (newex != executable1)
			{
			  *avhere = newex;
			  pid = win32_spawn (newex, FALSE, argv, env,
					     dwCreationFlags, si, pi);
			  free ((char *) newex);
			}
		    }
		}
#endif
	    }
	}
    }
  if (pid < 0)
    errno = save_errno;
  return pid;
}