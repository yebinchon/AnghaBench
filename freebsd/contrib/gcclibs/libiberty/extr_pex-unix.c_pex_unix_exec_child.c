
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {int dummy; } ;
typedef int pid_t ;


 int PEX_SEARCH ;
 int PEX_STDERR_TO_STDOUT ;
 int STDERR_FILE_NO ;
 int STDIN_FILE_NO ;
 int STDOUT_FILE_NO ;
 char* VFORK_STRING ;
 int close (int) ;
 int dup2 (int,int) ;
 char** environ ;
 int errno ;
 int execv (char const*,char* const*) ;
 int execvp (char const*,char* const*) ;
 int pex_child_error (struct pex_obj*,char const*,char*,int) ;
 int sleep (int volatile) ;
 int vfork () ;

__attribute__((used)) static long
pex_unix_exec_child (struct pex_obj *obj, int flags, const char *executable,
       char * const * argv, char * const * env,
                     int in, int out, int errdes,
       int toclose, const char **errmsg, int *err)
{
  pid_t pid;



  volatile int sleep_interval;
  volatile int retries;

  sleep_interval = 1;
  pid = -1;
  for (retries = 0; retries < 4; ++retries)
    {
      pid = vfork ();
      if (pid >= 0)
 break;
      sleep (sleep_interval);
      sleep_interval *= 2;
    }

  switch (pid)
    {
    case -1:
      *err = errno;
      *errmsg = VFORK_STRING;
      return -1;

    case 0:

      if (in != STDIN_FILE_NO)
 {
   if (dup2 (in, STDIN_FILE_NO) < 0)
     pex_child_error (obj, executable, "dup2", errno);
   if (close (in) < 0)
     pex_child_error (obj, executable, "close", errno);
 }
      if (out != STDOUT_FILE_NO)
 {
   if (dup2 (out, STDOUT_FILE_NO) < 0)
     pex_child_error (obj, executable, "dup2", errno);
   if (close (out) < 0)
     pex_child_error (obj, executable, "close", errno);
 }
      if (errdes != STDERR_FILE_NO)
 {
   if (dup2 (errdes, STDERR_FILE_NO) < 0)
     pex_child_error (obj, executable, "dup2", errno);
   if (close (errdes) < 0)
     pex_child_error (obj, executable, "close", errno);
 }
      if (toclose >= 0)
 {
   if (close (toclose) < 0)
     pex_child_error (obj, executable, "close", errno);
 }
      if ((flags & PEX_STDERR_TO_STDOUT) != 0)
 {
   if (dup2 (STDOUT_FILE_NO, STDERR_FILE_NO) < 0)
     pex_child_error (obj, executable, "dup2", errno);
 }

      if (env)
        environ = (char**) env;

      if ((flags & PEX_SEARCH) != 0)
 {
   execvp (executable, argv);
   pex_child_error (obj, executable, "execvp", errno);
 }
      else
 {
   execv (executable, argv);
   pex_child_error (obj, executable, "execv", errno);
 }


      return -1;

    default:

      if (in != STDIN_FILE_NO)
 {
   if (close (in) < 0)
     {
       *err = errno;
       *errmsg = "close";
       return -1;
     }
 }
      if (out != STDOUT_FILE_NO)
 {
   if (close (out) < 0)
     {
       *err = errno;
       *errmsg = "close";
       return -1;
     }
 }
      if (errdes != STDERR_FILE_NO)
 {
   if (close (errdes) < 0)
     {
       *err = errno;
       *errmsg = "close";
       return -1;
     }
 }

      return (long) pid;
    }
}
