
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PEXECUTE_ONE ;
 int PEXECUTE_SEARCH ;
 int STDOUT_FILENO ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int _ (char*) ;
 char** alloca (int) ;
 char* choose_temp_base () ;
 int close (int) ;
 int dup (int ) ;
 int dup2 (int,int ) ;
 int errno ;
 int fatal (int ,char const*,...) ;
 int fflush (int ) ;
 int open (char const*,int,int) ;
 int pexecute (char const*,char* const*,int ,char*,char**,char**,int) ;
 int program_name ;
 int pwait (int,int*,int ) ;
 int stderr ;
 int stdout ;
 int strerror (int ) ;

__attribute__((used)) static int
run_cmd (char *cmd, const char *redir)
{
  char *s;
  int pid, wait_status, retcode;
  int i;
  const char **argv;
  char *errmsg_fmt, *errmsg_arg;
  char *temp_base = choose_temp_base ();
  int in_quote;
  char sep;
  int redir_handle = -1;
  int stdout_save = -1;


  i = 0;

  for (s = cmd; *s; s++)
    if (*s == ' ')
      i++;

  i++;
  argv = alloca (sizeof (char *) * (i + 3));
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
  argv[i++] = ((void*)0);




  fflush (stdout);
  fflush (stderr);


  redir_handle = open (redir, O_WRONLY | O_TRUNC | O_CREAT, 0666);
  if (redir_handle == -1)
    fatal (_("can't open temporary file `%s': %s"), redir,
    strerror (errno));


  stdout_save = dup (STDOUT_FILENO);
  if (stdout_save == -1)
    fatal (_("can't redirect stdout: `%s': %s"), redir, strerror (errno));


  dup2 (redir_handle, STDOUT_FILENO);

  pid = pexecute (argv[0], (char * const *) argv, program_name, temp_base,
    &errmsg_fmt, &errmsg_arg, PEXECUTE_ONE | PEXECUTE_SEARCH);


  dup2 (stdout_save, STDOUT_FILENO);


  close (redir_handle);

  if (pid == -1)
    {
      fatal (_("%s %s: %s"), errmsg_fmt, errmsg_arg, strerror (errno));
      return 1;
    }

  retcode = 0;
  pid = pwait (pid, &wait_status, 0);

  if (pid == -1)
    {
      fatal (_("wait: %s"), strerror (errno));
      retcode = 1;
    }
  else if (WIFSIGNALED (wait_status))
    {
      fatal (_("subprocess got fatal signal %d"), WTERMSIG (wait_status));
      retcode = 1;
    }
  else if (WIFEXITED (wait_status))
    {
      if (WEXITSTATUS (wait_status) != 0)
 {
   fatal (_("%s exited with status %d"), cmd,
          WEXITSTATUS (wait_status));
   retcode = 1;
 }
    }
  else
    retcode = 1;

  return retcode;
}
