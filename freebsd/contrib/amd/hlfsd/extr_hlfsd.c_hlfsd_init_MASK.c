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
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  (* sa_handler ) (int /*<<< orphan*/ ) ;} ;
struct itimerval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_DAEMON ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int masterpid ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reloadinterval ; 
 int serverpid ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct itimerval*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  startup ; 
 int /*<<< orphan*/  FUNC21 () ; 

__attribute__((used)) static void
FUNC22(void)
{
  int child = 0;
#ifdef HAVE_SIGACTION
  struct sigaction sa;
#endif /* HAVE_SIGACTION */

  /*
   * Initialize file handles.
   */
  FUNC12(XLOG_INFO, "initializing hlfsd file handles");
  FUNC9();

  /*
   * If -D daemon then we must fork.
   */
  if (FUNC2(D_DAEMON))
    child = FUNC7();

  if (child < 0)
    FUNC6("fork: %m");

  if (child != 0) {		/* parent process - save child pid */
    masterpid = child;
    FUNC1();		/* for logging routines */
    return;
  }

  /*
   * CHILD CODE:
   * initialize server
   */

  FUNC12(XLOG_INFO, "initializing home directory database");
  FUNC13();			/* initialize database */
  FUNC12(XLOG_INFO, "home directory database initialized");

  masterpid = serverpid = FUNC1(); /* for logging routines */

  /*
   * SIGALRM/SIGHUP: reload password database if timer expired
   * or user sent HUP signal.
   */
#ifdef HAVE_SIGACTION
  sa.sa_handler = reload;
  sa.sa_flags = 0;
  sigemptyset(&(sa.sa_mask));
  sigaddset(&(sa.sa_mask), SIGALRM);
  sigaddset(&(sa.sa_mask), SIGHUP);
  sigaction(SIGALRM, &sa, NULL);
  sigaction(SIGHUP, &sa, NULL);
#else /* not HAVE_SIGACTION */
  FUNC20(SIGALRM, reload);
  FUNC20(SIGHUP, reload);
#endif /* not HAVE_SIGACTION */

  /*
   * SIGTERM: cleanup and exit.
   */
#ifdef HAVE_SIGACTION
  sa.sa_handler = cleanup;
  sa.sa_flags = 0;
  sigemptyset(&(sa.sa_mask));
  sigaddset(&(sa.sa_mask), SIGTERM);
  sigaction(SIGTERM, &sa, NULL);
#else /* not HAVE_SIGACTION */
  FUNC20(SIGTERM, cleanup);
#endif /* not HAVE_SIGACTION */

  /*
   * SIGCHLD: interlock synchronization and testing
   */
#ifdef HAVE_SIGACTION
  sa.sa_handler = interlock;
  sa.sa_flags = 0;
  sigemptyset(&(sa.sa_mask));
  sigaddset(&(sa.sa_mask), SIGCHLD);
  sigaction(SIGCHLD, &sa, NULL);
#else /* not HAVE_SIGACTION */
  FUNC20(SIGCHLD, interlock);
#endif /* not HAVE_SIGACTION */

  /*
   * SIGUSR1: dump internal hlfsd maps/cache to file
   */
#ifdef HAVE_SIGACTION
# if defined(DEBUG) || defined(DEBUG_PRINT)
  sa.sa_handler = plt_print;
# else /* not defined(DEBUG) || defined(DEBUG_PRINT) */
  sa.sa_handler = SIG_IGN;
# endif /* not defined(DEBUG) || defined(DEBUG_PRINT) */
  sa.sa_flags = 0;
  sigemptyset(&(sa.sa_mask));
  sigaddset(&(sa.sa_mask), SIGUSR1);
  sigaction(SIGUSR1, &sa, NULL);
#else /* not HAVE_SIGACTION */
# if defined(DEBUG) || defined(DEBUG_PRINT)
  signal(SIGUSR1, plt_print);
# else /* not defined(DEBUG) || defined(DEBUG_PRINT) */
  FUNC20(SIGUSR1, SIG_IGN);
# endif /* not defined(DEBUG) || defined(DEBUG_PRINT) */
#endif /* not HAVE_SIGACTION */

  if (FUNC16(ITIMER_REAL, &reloadinterval, (struct itimerval *) NULL) < 0)
    FUNC6("setitimer: %m");

  FUNC5(&startup);

  /*
   * If -D daemon, then start serving here in the child,
   * and the parent will exit.  But if -D nodaemon, then
   * skip this code and make sure svc_run is entered elsewhere.
   */
  if (FUNC2(D_DAEMON)) {
    /*
     * Dissociate from the controlling terminal
     */
    FUNC3();

    /*
     * signal parent we are ready. parent should
     * mount(2) and die.
     */
    if (FUNC11(FUNC8(), SIGUSR2) < 0)
      FUNC6("kill: %m");
    FUNC12(XLOG_INFO, "starting svc_run");
    FUNC21();
    FUNC4(0);		/* should never happen, just in case */
  }

}