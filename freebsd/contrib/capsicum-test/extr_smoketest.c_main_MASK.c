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
struct stat {int dummy; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  CAP_SEEK ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int ECAPMODE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  WNOHANG ; 
 int FUNC0 (char*) ; 
 int FUNC1 () ; 
 int FUNC2 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,char**,char**) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (int,struct stat*) ; 
 int FUNC13 () ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  handle_signal ; 
 int FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int,int*) ; 
 int FUNC18 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ seen_sigchld ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int FUNC23 (int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC24(int argc, char *argv[]) {
  FUNC19(SIGCHLD, handle_signal);
  int lifetime = 4; /* seconds */
  if (1 < argc) {
    lifetime = FUNC0(argv[1]);
  }

  /* cap_rights_limit() available? */
  cap_rights_t r_rws;
  FUNC5(&r_rws, CAP_READ, CAP_WRITE, CAP_SEEK);
  int cap_fd = FUNC7(STDOUT_FILENO);
  int rc = FUNC6(cap_fd, &r_rws);
  FUNC11(stderr, "[%d] cap_fd=%d\n", FUNC13(), cap_fd);
  if (rc < 0) FUNC11(stderr, "*** cap_rights_limit() failed: errno=%d %s\n", errno, FUNC21(errno));

  /* cap_rights_get() available? */
  cap_rights_t rights;
  FUNC5(&rights, 0);
  rc = FUNC4(cap_fd, &rights);
  char buffer[256];
  FUNC3(&rights, buffer);
  FUNC11(stderr, "[%d] cap_rights_get(cap_fd=%d) rc=%d rights=%s\n", FUNC13(), cap_fd, rc, buffer);
  if (rc < 0) FUNC11(stderr, "*** cap_rights_get() failed: errno=%d %s\n", errno, FUNC21(errno));

  /* fstat() policed? */
  struct stat buf;
  rc = FUNC12(cap_fd, &buf);
  FUNC11(stderr, "[%d] fstat(cap_fd=%d) rc=%d errno=%d\n", FUNC13(), cap_fd, rc, errno);
  if (rc != -1) FUNC11(stderr, "*** fstat() unexpectedly succeeded\n");

  /* pdfork() available? */
  int pd = -1;
  rc = FUNC16(&pd, 0);
  if (rc < 0) FUNC11(stderr, "*** pdfork() failed: errno=%d %s\n", errno, FUNC21(errno));

  if (rc == 0) { /* child */
    int count = 0;
    while (count < 20) {
      FUNC11(stderr, "  [%d] child alive, parent is ppid=%d\n", FUNC13(), FUNC14());
      FUNC20(1);
    }
    FUNC11(stderr, "  [%d] child exit(0)\n", FUNC13());
    FUNC8(0);
  }
  FUNC11(stderr, "[%d] pdfork() rc=%d pd=%d\n", FUNC13(), rc, pd);

  /* pdgetpid() available? */
  pid_t actual_pid = rc;
  pid_t got_pid = -1;
  rc = FUNC17(pd, &got_pid);
  if (rc < 0) FUNC11(stderr, "*** pdgetpid(pd=%d) failed: errno=%d %s\n", pd, errno, FUNC21(errno));
  FUNC11(stderr, "[%d] pdgetpid(pd=%d)=%d, pdfork returned %d\n", FUNC13(), pd, got_pid, actual_pid);

  FUNC20(lifetime);

  /* pdkill() available? */
  rc = FUNC18(pd, SIGKILL);
  FUNC11(stderr, "[%d] pdkill(pd=%d, SIGKILL) -> rc=%d\n", FUNC13(), pd, rc);
  if (rc < 0) FUNC11(stderr, "*** pdkill() failed: errno=%d %s\n", errno, FUNC21(errno));
  FUNC22(50000);  /* Allow time for death and signals */

  /* Death of a pdforked child should be invisible */
  if (seen_sigchld) FUNC11(stderr, "*** SIGCHLD emitted\n");
  int status;
  rc = FUNC23(-1, &status, WNOHANG, NULL);
  if (rc > 0) FUNC11(stderr, "*** wait4(-1, ...) unexpectedly found child %d\n", rc);

  FUNC11(stderr, "[%d] forking off a child process to check cap_enter()\n", FUNC13());
  pid_t child = FUNC10();
  if (child == 0) { /* child */
    /* cap_getmode() / cap_enter() available? */
    unsigned int cap_mode = -1;
    rc = FUNC2(&cap_mode);
    FUNC11(stderr, "  [%d] cap_getmode() -> rc=%d, cap_mode=%d\n", FUNC13(), rc, cap_mode);
    if (rc < 0) FUNC11(stderr, "*** cap_getmode() failed: errno=%d %s\n", errno, FUNC21(errno));

    rc = FUNC1();
    FUNC11(stderr, "  [%d] cap_enter() -> rc=%d\n", FUNC13(), rc);
    if (rc < 0) FUNC11(stderr, "*** cap_enter() failed: errno=%d %s\n", errno, FUNC21(errno));

    rc = FUNC2(&cap_mode);
    FUNC11(stderr, "  [%d] cap_getmode() -> rc=%d, cap_mode=%d\n", FUNC13(), rc, cap_mode);
    if (rc < 0) FUNC11(stderr, "*** cap_getmode() failed: errno=%d %s\n", errno, FUNC21(errno));

    /* open disallowed? */
    rc = FUNC15("/etc/passwd", O_RDONLY);
    FUNC11(stderr, "  [%d] open('/etc/passwd') -> rc=%d, errno=%d\n", FUNC13(), rc, errno);
    if (rc != -1) FUNC11(stderr, "*** open() unexpectedly succeeded\n");
#ifdef ECAPMODE
    if (errno != ECAPMODE) fprintf(stderr, "*** open() failed with errno %d not ECAPMODE\n", errno);
#endif
    FUNC8(0);
  }
  rc = FUNC23(child, &status, 0, NULL);
  FUNC11(stderr, "[%d] child %d exited with status %x\n", FUNC13(), child, status);

  /* fexecve() available? */
  char* argv_pass[] = {(char*)"/bin/ls", "-l", "smoketest", NULL};
  char* null_envp[] = {NULL};
  int ls_bin = FUNC15("/bin/ls", O_RDONLY);
  FUNC11(stderr, "[%d] about to fexecve('/bin/ls', '-l', 'smoketest')\n", FUNC13());
  rc = FUNC9(ls_bin, argv_pass, null_envp);
  /* should never reach here */
  FUNC11(stderr, "*** fexecve(fd=%d) failed: rc=%d errno=%d %s\n", ls_bin, rc, errno, FUNC21(errno));

  return 0;
}