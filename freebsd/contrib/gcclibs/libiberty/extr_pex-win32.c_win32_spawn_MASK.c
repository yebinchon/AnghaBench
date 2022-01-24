#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ hProcess; int /*<<< orphan*/  hThread; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPSTARTUPINFO ;
typedef  TYPE_1__* LPPROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 char** FUNC2 (int) ; 
 char* FUNC3 (char* const*) ; 
 int /*<<< orphan*/  env_compare ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char**,char* const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char**,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char* const) ; 

__attribute__((used)) static long
FUNC11 (const char *executable,
	     BOOL search,
	     char *const *argv,
             char *const *env, /* array of strings of the form: VAR=VALUE */
	     DWORD dwCreationFlags,
	     LPSTARTUPINFO si,
	     LPPROCESS_INFORMATION pi)
{
  char *full_executable;
  char *cmdline;
  char **env_copy;
  char *env_block = NULL;

  full_executable = NULL;
  cmdline = NULL;

  if (env)
    {
      int env_size;

      /* Count the number of environment bindings supplied.  */
      for (env_size = 0; env[env_size]; env_size++)
        continue;
    
      /* Assemble an environment block, if required.  This consists of
         VAR=VALUE strings juxtaposed (with one null character between each
         pair) and an additional null at the end.  */
      if (env_size > 0)
        {
          int var;
          int total_size = 1; /* 1 is for the final null.  */
          char *bufptr;
    
          /* Windows needs the members of the block to be sorted by variable
             name.  */
          env_copy = FUNC2 (sizeof (char *) * env_size);
          FUNC7 (env_copy, env, sizeof (char *) * env_size);
          FUNC8 (env_copy, env_size, sizeof (char *), env_compare);
    
          for (var = 0; var < env_size; var++)
            total_size += FUNC10 (env[var]) + 1;
    
          env_block = FUNC6 (total_size);
          bufptr = env_block;
          for (var = 0; var < env_size; var++)
            bufptr = FUNC9 (bufptr, env_copy[var]) + 1;
    
          *bufptr = '\0';
        }
    }

  full_executable = FUNC4 (executable, search);
  if (!full_executable)
    goto error;
  cmdline = FUNC3 (argv);
  if (!cmdline)
    goto error;
    
  /* Create the child process.  */  
  if (!FUNC1 (full_executable, cmdline, 
		      /*lpProcessAttributes=*/NULL,
		      /*lpThreadAttributes=*/NULL,
		      /*bInheritHandles=*/TRUE,
		      dwCreationFlags,
		      (LPVOID) env_block,
		      /*lpCurrentDirectory=*/NULL,
		      si,
		      pi))
    {
      if (env_block)
        FUNC5 (env_block);

      FUNC5 (full_executable);

      return -1;
    }

  /* Clean up.  */
  FUNC0 (pi->hThread);
  FUNC5 (full_executable);
  if (env_block)
    FUNC5 (env_block);

  return (long) pi->hProcess;

 error:
  if (env_block)
    FUNC5 (env_block);
  if (cmdline)
    FUNC5 (cmdline);
  if (full_executable)
    FUNC5 (full_executable);

  return -1;
}