
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PEXECUTE_ONE ;
 int PEXECUTE_SEARCH ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 char* WTERMSIG (int) ;
 char* _ (char*) ;
 int abort () ;
 char** alloca (int) ;
 char* choose_temp_base () ;
 int errno ;
 int fatal (char*,char*) ;
 int inform (char*,...) ;
 int non_fatal (char*,char const*,scalar_t__) ;
 int pexecute (char const*,char* const*,int ,char*,char**,char**,int) ;
 int program_name ;
 int pwait (int,int*,int ) ;
 char* strerror (int ) ;

__attribute__((used)) static void
run (const char *what, char *args)
{
  char *s;
  int pid, wait_status;
  int i;
  const char **argv;
  char *errmsg_fmt, *errmsg_arg;
  char *temp_base = choose_temp_base ();

  inform ("run: %s %s", what, args);


  i = 0;
  for (s = args; *s; s++)
    if (*s == ' ')
      i++;
  i++;
  argv = alloca (sizeof (char *) * (i + 3));
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
  argv[i++] = ((void*)0);

  pid = pexecute (argv[0], (char * const *) argv, program_name, temp_base,
    &errmsg_fmt, &errmsg_arg, PEXECUTE_ONE | PEXECUTE_SEARCH);

  if (pid == -1)
    {
      inform (strerror (errno));

      fatal (errmsg_fmt, errmsg_arg);
    }

  pid = pwait (pid, & wait_status, 0);

  if (pid == -1)
    {

      fatal (_("wait: %s"), strerror (errno));
    }
  else if (WIFSIGNALED (wait_status))
    {

      fatal (_("subprocess got fatal signal %d"), WTERMSIG (wait_status));
    }
  else if (WIFEXITED (wait_status))
    {
      if (WEXITSTATUS (wait_status) != 0)

 non_fatal (_("%s exited with status %d"),
     what, WEXITSTATUS (wait_status));
    }
  else
    abort ();
}
