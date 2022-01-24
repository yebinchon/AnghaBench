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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LOG_NOWAIT ; 
 int LOG_PID ; 
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 int /*<<< orphan*/  XLOG_USER ; 
 int /*<<< orphan*/  XLOG_WARNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * logfp ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int syslogging ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int
FUNC12(char *logfile, int old_umask, int truncate_log)
{
  FILE *new_logfp = stderr;

  if (logfile) {
#ifdef HAVE_SYSLOG
    syslogging = 0;
#endif /* HAVE_SYSLOG */

    if (FUNC1(logfile, "/dev/stderr"))
      new_logfp = stderr;
    else if (FUNC0(logfile, "syslog", FUNC9("syslog"))) {

#ifdef HAVE_SYSLOG
      syslogging = 1;
      new_logfp = stderr;
      openlog(am_get_progname(),
	      LOG_PID
# ifdef LOG_NOWAIT
	      | LOG_NOWAIT
# endif /* LOG_NOWAIT */
# ifdef LOG_DAEMON
	      , get_syslog_facility(logfile)
# endif /* LOG_DAEMON */
	      );
#else /* not HAVE_SYSLOG */
      FUNC8(XLOG_WARNING, "syslog option not supported, logging unchanged");
#endif /* not HAVE_SYSLOG */

    } else {			/* regular log file */
      (void) FUNC11(old_umask);
      if (truncate_log)
	FUNC2(FUNC10(logfile, 0));
      new_logfp = FUNC5(logfile, "a");
      FUNC11(0);
    }
  }

  /*
   * If we couldn't open a new file, then continue using the old.
   */
  if (!new_logfp && logfile) {
    FUNC8(XLOG_USER, "%s: Can't open logfile: %m", logfile);
    return 1;
  }

  /*
   * Close the previous file
   */
  if (logfp && logfp != stderr)
    (void) FUNC4(logfp);
  logfp = new_logfp;

  if (logfile)
    FUNC8(XLOG_INFO, "switched to logfile \"%s\"", logfile);
  else
    FUNC8(XLOG_INFO, "no logfile defined; using stderr");

  return 0;
}