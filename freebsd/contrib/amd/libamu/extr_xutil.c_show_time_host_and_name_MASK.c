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
typedef  scalar_t__ time_t ;
struct timespec {scalar_t__ tv_sec; int /*<<< orphan*/  tv_nsec; } ;
typedef  int /*<<< orphan*/  nsecs ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  D_HRTIME ; 
#define  XLOG_DEBUG 135 
#define  XLOG_ERROR 134 
#define  XLOG_FATAL 133 
#define  XLOG_INFO 132 
#define  XLOG_MAP 131 
#define  XLOG_STATS 130 
#define  XLOG_USER 129 
#define  XLOG_WARNING 128 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ am_mypid ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ,long,char*) ; 
 int /*<<< orphan*/  logfp ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(int lvl)
{
  static time_t last_t = 0;
  static char *last_ctime = NULL;
  time_t t;
#if defined(HAVE_CLOCK_GETTIME) && defined(DEBUG)
  struct timespec ts;
#endif /* defined(HAVE_CLOCK_GETTIME) && defined(DEBUG) */
  char nsecs[11];		/* '.' + 9 digits + '\0' */
  char *sev;

  nsecs[0] = '\0';

#if defined(HAVE_CLOCK_GETTIME) && defined(DEBUG)
  /*
   * Some systems (AIX 4.3) seem to implement clock_gettime() as stub
   * returning ENOSYS.
   */
  if (clock_gettime(CLOCK_REALTIME, &ts) == 0) {
    t = ts.tv_sec;
    if (amuDebug(D_HRTIME))
      xsnprintf(nsecs, sizeof(nsecs), ".%09ld", ts.tv_nsec);
  }
  else
#endif /* defined(HAVE_CLOCK_GETTIME) && defined(DEBUG) */
    t = FUNC4(NULL);

  if (t != last_t) {
    last_ctime = FUNC5(&t);
    last_t = t;
  }

  switch (lvl) {
  case XLOG_FATAL:
    sev = "fatal:";
    break;
  case XLOG_ERROR:
    sev = "error:";
    break;
  case XLOG_USER:
    sev = "user: ";
    break;
  case XLOG_WARNING:
    sev = "warn: ";
    break;
  case XLOG_INFO:
    sev = "info: ";
    break;
  case XLOG_DEBUG:
    sev = "debug:";
    break;
  case XLOG_MAP:
    sev = "map:  ";
    break;
  case XLOG_STATS:
    sev = "stats:";
    break;
  default:
    sev = "hmm:  ";
    break;
  }
  FUNC6(logfp, "%15.15s%s %s %d[%ld]/%s ",
	  last_ctime + 4, nsecs, FUNC0(),
	  FUNC1(),
	  (long) am_mypid,
	  sev);
}