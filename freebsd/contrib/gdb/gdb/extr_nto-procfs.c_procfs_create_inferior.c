
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inheritance {int flags; int pgroup; int nd; } ;
typedef int sigset_t ;
typedef int pid_t ;
typedef int inherit ;
typedef int flags ;
struct TYPE_2__ {int * obfd; } ;


 int DCMD_PROC_SET_FLAG ;
 int EOK ;
 int ND_LOCAL_NODE ;
 scalar_t__ ND_NODE_CMP (int ,int ) ;
 int O_RDONLY ;
 int O_WRONLY ;
 int SIGUSR1 ;
 int SIG_BLOCK ;
 int SIG_IGN ;
 int SIG_UNBLOCK ;
 int SOLIB_CREATE_INFERIOR_HOOK (int) ;
 int SPAWN_EXEC ;
 int SPAWN_HOLD ;
 int SPAWN_NEWPGROUP ;
 int SPAWN_SETGROUP ;
 int SPAWN_SETND ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _DEBUG_FLAG_KLC ;
 scalar_t__ attach_flag ;
 int breakup_args (char*,char**) ;
 int close (int) ;
 int ctl_fd ;
 int devctl (int ,int ,int*,int,int ) ;
 int do_attach (int ) ;
 char* errno ;
 int error (char*,char*,char*,int ) ;
 int * exec_bfd ;
 char* get_exec_file (int) ;
 char* inferior_io_terminal ;
 int inferior_ptid ;
 int memset (struct inheritance*,int ,int) ;
 int nto_node () ;
 char** nto_parse_redirection (char**,char**,char**,char**) ;
 int nto_procfs_node ;
 int open (char*,int ) ;
 int perror (char*) ;
 int pid_to_ptid (int) ;
 int procfs_ops ;
 int push_target (int *) ;
 int safe_strerror (char*) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int sigprocmask (int ,int *,int *) ;
 int spawnp (char*,int,int*,struct inheritance*,char**,char**) ;
 int strlen (char*) ;
 TYPE_1__* symfile_objfile ;
 int target_terminal_init () ;
 int xfree (char*) ;
 char** xmalloc (int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
procfs_create_inferior (char *exec_file, char *allargs, char **env)
{
  struct inheritance inherit;
  pid_t pid;
  int flags, errn;
  char **argv, *args;
  char *in = "", *out = "", *err = "";
  int fd, fds[3];
  sigset_t set;

  argv = xmalloc (((strlen (allargs) + 1) / (unsigned) 2 + 2) *
    sizeof (*argv));
  argv[0] = get_exec_file (1);
  if (!argv[0])
    {
      if (exec_file)
 argv[0] = exec_file;
      else
 return;
    }

  args = xstrdup (allargs);
  breakup_args (args, exec_file ? &argv[1] : &argv[0]);

  argv = nto_parse_redirection (argv, &in, &out, &err);

  fds[0] = STDIN_FILENO;
  fds[1] = STDOUT_FILENO;
  fds[2] = STDERR_FILENO;



  if (inferior_io_terminal)
    {
      if (!in[0])
 in = inferior_io_terminal;
      if (!out[0])
 out = inferior_io_terminal;
      if (!err[0])
 err = inferior_io_terminal;
    }

  if (in[0])
    {
      fd = open (in, O_RDONLY);
      if (fd == -1)
 perror (in);
      else
 fds[0] = fd;
    }
  if (out[0])
    {
      fd = open (out, O_WRONLY);
      if (fd == -1)
 perror (out);
      else
 fds[1] = fd;
    }
  if (err[0])
    {
      fd = open (err, O_WRONLY);
      if (fd == -1)
 perror (err);
      else
 fds[2] = fd;
    }


  signal (SIGUSR1, signal (SIGUSR1, SIG_IGN));

  sigemptyset (&set);
  sigaddset (&set, SIGUSR1);
  sigprocmask (SIG_UNBLOCK, &set, ((void*)0));

  memset (&inherit, 0, sizeof (inherit));

  if (ND_NODE_CMP (nto_procfs_node, ND_LOCAL_NODE) != 0)
    {
      inherit.nd = nto_node();
      inherit.flags |= SPAWN_SETND;
      inherit.flags &= ~SPAWN_EXEC;
    }
  inherit.flags |= SPAWN_SETGROUP | SPAWN_HOLD;
  inherit.pgroup = SPAWN_NEWPGROUP;
  pid = spawnp (argv[0], 3, fds, &inherit, argv,
  ND_NODE_CMP (nto_procfs_node, ND_LOCAL_NODE) == 0 ? env : 0);
  xfree (args);

  sigprocmask (SIG_BLOCK, &set, ((void*)0));

  if (pid == -1)
    error ("Error spawning %s: %d (%s)", argv[0], errno, safe_strerror (errno));

  if (fds[0] != STDIN_FILENO)
    close (fds[0]);
  if (fds[1] != STDOUT_FILENO)
    close (fds[1]);
  if (fds[2] != STDERR_FILENO)
    close (fds[2]);

  inferior_ptid = do_attach (pid_to_ptid (pid));

  attach_flag = 0;
  flags = _DEBUG_FLAG_KLC;
  errn = devctl (ctl_fd, DCMD_PROC_SET_FLAG, &flags, sizeof (flags), 0);
  if (errn != EOK)
    {



    }
  push_target (&procfs_ops);
  target_terminal_init ();






}
