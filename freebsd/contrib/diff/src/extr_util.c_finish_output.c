
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_TROUBLE ;
 int INT_MAX ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 char* _ (char*) ;
 int errno ;
 int error (int ,int,char*,int ,int) ;
 int fatal (char*) ;
 scalar_t__ fclose (scalar_t__) ;
 scalar_t__ ferror (scalar_t__) ;
 scalar_t__ outfile ;
 int pclose (scalar_t__) ;
 int pfatal_with_name (char*) ;
 int pr_pid ;
 int pr_program ;
 scalar_t__ stdout ;
 scalar_t__ waitpid (int ,int*,int ) ;

void
finish_output (void)
{
  if (outfile != 0 && outfile != stdout)
    {
      int status;
      int wstatus;
      int werrno = 0;
      if (ferror (outfile))
 fatal ("write failed");

      wstatus = pclose (outfile);
      if (wstatus == -1)
 werrno = errno;






      status = (! werrno && WIFEXITED (wstatus)
  ? WEXITSTATUS (wstatus)
  : INT_MAX);
      if (status)
 error (EXIT_TROUBLE, werrno,
        _(status == 126
   ? "subsidiary program `%s' could not be invoked"
   : status == 127
   ? "subsidiary program `%s' not found"
   : status == INT_MAX
   ? "subsidiary program `%s' failed"
   : "subsidiary program `%s' failed (exit status %d)"),
        pr_program, status);
    }

  outfile = 0;
}
