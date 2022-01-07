
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hProcess; int hThread; } ;
typedef int LPVOID ;
typedef int LPSTARTUPINFO ;
typedef TYPE_1__* LPPROCESS_INFORMATION ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int CreateProcess (char*,char*,int *,int *,int ,int ,int ,int *,int ,TYPE_1__*) ;
 int TRUE ;
 char** alloca (int) ;
 char* argv_to_cmdline (char* const*) ;
 int env_compare ;
 char* find_executable (char const*,int ) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char**,char* const*,int) ;
 int qsort (char**,int,int,int ) ;
 char* stpcpy (char*,char*) ;
 scalar_t__ strlen (char* const) ;

__attribute__((used)) static long
win32_spawn (const char *executable,
      BOOL search,
      char *const *argv,
             char *const *env,
      DWORD dwCreationFlags,
      LPSTARTUPINFO si,
      LPPROCESS_INFORMATION pi)
{
  char *full_executable;
  char *cmdline;
  char **env_copy;
  char *env_block = ((void*)0);

  full_executable = ((void*)0);
  cmdline = ((void*)0);

  if (env)
    {
      int env_size;


      for (env_size = 0; env[env_size]; env_size++)
        continue;




      if (env_size > 0)
        {
          int var;
          int total_size = 1;
          char *bufptr;



          env_copy = alloca (sizeof (char *) * env_size);
          memcpy (env_copy, env, sizeof (char *) * env_size);
          qsort (env_copy, env_size, sizeof (char *), env_compare);

          for (var = 0; var < env_size; var++)
            total_size += strlen (env[var]) + 1;

          env_block = malloc (total_size);
          bufptr = env_block;
          for (var = 0; var < env_size; var++)
            bufptr = stpcpy (bufptr, env_copy[var]) + 1;

          *bufptr = '\0';
        }
    }

  full_executable = find_executable (executable, search);
  if (!full_executable)
    goto error;
  cmdline = argv_to_cmdline (argv);
  if (!cmdline)
    goto error;


  if (!CreateProcess (full_executable, cmdline,
                                ((void*)0),
                               ((void*)0),
                            TRUE,
        dwCreationFlags,
        (LPVOID) env_block,
                               ((void*)0),
        si,
        pi))
    {
      if (env_block)
        free (env_block);

      free (full_executable);

      return -1;
    }


  CloseHandle (pi->hThread);
  free (full_executable);
  if (env_block)
    free (env_block);

  return (long) pi->hProcess;

 error:
  if (env_block)
    free (env_block);
  if (cmdline)
    free (cmdline);
  if (full_executable)
    free (full_executable);

  return -1;
}
