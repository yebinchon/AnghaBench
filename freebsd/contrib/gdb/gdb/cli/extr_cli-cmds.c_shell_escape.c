
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;
 int chdir (int ) ;
 int current_directory ;
 int errno ;
 int error (char*) ;
 int execl (char*,char*,char*,...) ;
 int fprintf_unfiltered (int ,char*,char*,int) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 scalar_t__ getenv (char*) ;
 int safe_strerror (int ) ;
 char* strrchr (char*,char) ;
 int system (char*) ;
 int vfork () ;
 int wait (int*) ;

__attribute__((used)) static void
shell_escape (char *arg, int from_tty)
{
  int rc, status, pid;

  if ((pid = vfork ()) == 0)
    {
      char *p, *user_shell;

      if ((user_shell = (char *) getenv ("SHELL")) == ((void*)0))
 user_shell = "/bin/sh";


      if ((p = strrchr (user_shell, '/')) == ((void*)0))
 p = user_shell;
      else
 p++;

      if (!arg)
 execl (user_shell, p, (char *) 0);
      else
 execl (user_shell, p, "-c", arg, (char *) 0);

      fprintf_unfiltered (gdb_stderr, "Cannot execute %s: %s\n", user_shell,
     safe_strerror (errno));
      gdb_flush (gdb_stderr);
      _exit (0177);
    }

  if (pid != -1)
    while ((rc = wait (&status)) != pid && rc != -1)
      ;
  else
    error ("Fork failed");

}
