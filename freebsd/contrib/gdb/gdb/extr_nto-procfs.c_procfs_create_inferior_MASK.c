#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inheritance {int flags; int /*<<< orphan*/  pgroup; int /*<<< orphan*/  nd; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  inherit ;
typedef  int /*<<< orphan*/  flags ;
struct TYPE_2__ {int /*<<< orphan*/ * obfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCMD_PROC_SET_FLAG ; 
 int EOK ; 
 int /*<<< orphan*/  ND_LOCAL_NODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SPAWN_EXEC ; 
 int SPAWN_HOLD ; 
 int /*<<< orphan*/  SPAWN_NEWPGROUP ; 
 int SPAWN_SETGROUP ; 
 int SPAWN_SETND ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int _DEBUG_FLAG_KLC ; 
 scalar_t__ attach_flag ; 
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ctl_fd ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* errno ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * exec_bfd ; 
 char* FUNC7 (int) ; 
 char* inferior_io_terminal ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC8 (struct inheritance*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char** FUNC10 (char**,char**,char**,char**) ; 
 int /*<<< orphan*/  nto_procfs_node ; 
 int FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  procfs_ops ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (char*,int,int*,struct inheritance*,char**,char**) ; 
 int FUNC21 (char*) ; 
 TYPE_1__* symfile_objfile ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 char** FUNC24 (int) ; 
 char* FUNC25 (char*) ; 

__attribute__((used)) static void
FUNC26 (char *exec_file, char *allargs, char **env)
{
  struct inheritance inherit;
  pid_t pid;
  int flags, errn;
  char **argv, *args;
  char *in = "", *out = "", *err = "";
  int fd, fds[3];
  sigset_t set;

  argv = FUNC24 (((FUNC21 (allargs) + 1) / (unsigned) 2 + 2) *
		  sizeof (*argv));
  argv[0] = FUNC7 (1);
  if (!argv[0])
    {
      if (exec_file)
	argv[0] = exec_file;
      else
	return;
    }

  args = FUNC25 (allargs);
  FUNC2 (args, exec_file ? &argv[1] : &argv[0]);

  argv = FUNC10 (argv, &in, &out, &err);

  fds[0] = STDIN_FILENO;
  fds[1] = STDOUT_FILENO;
  fds[2] = STDERR_FILENO;

  /* If the user specified I/O via gdb's --tty= arg, use it, but only
     if the i/o is not also being specified via redirection.  */
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
      fd = FUNC11 (in, O_RDONLY);
      if (fd == -1)
	FUNC12 (in);
      else
	fds[0] = fd;
    }
  if (out[0])
    {
      fd = FUNC11 (out, O_WRONLY);
      if (fd == -1)
	FUNC12 (out);
      else
	fds[1] = fd;
    }
  if (err[0])
    {
      fd = FUNC11 (err, O_WRONLY);
      if (fd == -1)
	FUNC12 (err);
      else
	fds[2] = fd;
    }

  /* Clear any pending SIGUSR1's but keep the behavior the same.  */
  FUNC18 (SIGUSR1, FUNC18 (SIGUSR1, SIG_IGN));

  FUNC17 (&set);
  FUNC16 (&set, SIGUSR1);
  FUNC19 (SIG_UNBLOCK, &set, NULL);

  FUNC8 (&inherit, 0, sizeof (inherit));

  if (FUNC0 (nto_procfs_node, ND_LOCAL_NODE) != 0)
    {
      inherit.nd = FUNC9();
      inherit.flags |= SPAWN_SETND;
      inherit.flags &= ~SPAWN_EXEC;
    }
  inherit.flags |= SPAWN_SETGROUP | SPAWN_HOLD;
  inherit.pgroup = SPAWN_NEWPGROUP;
  pid = FUNC20 (argv[0], 3, fds, &inherit, argv,
		FUNC0 (nto_procfs_node, ND_LOCAL_NODE) == 0 ? env : 0);
  FUNC23 (args);

  FUNC19 (SIG_BLOCK, &set, NULL);

  if (pid == -1)
    FUNC6 ("Error spawning %s: %d (%s)", argv[0], errno, FUNC15 (errno));

  if (fds[0] != STDIN_FILENO)
    FUNC3 (fds[0]);
  if (fds[1] != STDOUT_FILENO)
    FUNC3 (fds[1]);
  if (fds[2] != STDERR_FILENO)
    FUNC3 (fds[2]);

  inferior_ptid = FUNC5 (FUNC13 (pid));

  attach_flag = 0;
  flags = _DEBUG_FLAG_KLC;	/* Kill-on-Last-Close flag.  */
  errn = FUNC4 (ctl_fd, DCMD_PROC_SET_FLAG, &flags, sizeof (flags), 0);
  if (errn != EOK)
    {
      /* FIXME: expected warning?  */
      /* warning( "Failed to set Kill-on-Last-Close flag: errno = %d(%s)\n",
         errn, strerror(errn) ); */
    }
  FUNC14 (&procfs_ops);
  FUNC22 ();

#ifdef SOLIB_CREATE_INFERIOR_HOOK
  if (exec_bfd != NULL
      || (symfile_objfile != NULL && symfile_objfile->obfd != NULL))
    SOLIB_CREATE_INFERIOR_HOOK (pid);
#endif
}