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

/* Variables and functions */
 scalar_t__ ENOTTY ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  TIOCNOTTY ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 int /*<<< orphan*/  XLOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC7(void)
{
  int fd;

  /*
   * In daemon mode, leaving open file descriptors to terminals or pipes
   * can be a really bad idea.
   * Case in point: the redhat startup script calls us through their 'initlog'
   * program, which exits as soon as the original amd process exits. If,
   * at some point, a misbehaved library function decides to print something
   * to the screen, we get a SIGPIPE and die.
   * And guess what: NIS glibc functions will attempt to print to stderr
   * "YPBINDPROC_DOMAIN: Domain not bound" if ypbind is running but can't find
   * a ypserver.
   *
   * So we close all of our "terminal" filedescriptors, i.e. 0, 1 and 2, then
   * reopen them as /dev/null.
   *
   * XXX We should also probably set the SIGPIPE handler to SIG_IGN.
   */
  fd = FUNC4("/dev/null", O_RDWR);
  if (fd < 0) {
    FUNC5(XLOG_WARNING, "Could not open /dev/null for rw: %m");
  } else {
    FUNC2(stdin);  FUNC0(0); FUNC1(fd, 0);
    FUNC2(stdout); FUNC0(1); FUNC1(fd, 1);
    FUNC2(stderr); FUNC0(2); FUNC1(fd, 2);
    FUNC0(fd);
  }

#ifdef HAVE_SETSID
  /* XXX: one day maybe use vhangup(2) */
  if (setsid() < 0) {
    plog(XLOG_WARNING, "Could not release controlling tty using setsid(): %m");
  } else {
    plog(XLOG_INFO, "released controlling tty using setsid()");
    return;
  }
#endif /* HAVE_SETSID */

#ifdef TIOCNOTTY
  fd = open("/dev/tty", O_RDWR);
  if (fd < 0) {
    /* not an error if already no controlling tty */
    if (errno != ENXIO)
      plog(XLOG_WARNING, "Could not open controlling tty: %m");
  } else {
    if (ioctl(fd, TIOCNOTTY, 0) < 0 && errno != ENOTTY)
      plog(XLOG_WARNING, "Could not disassociate tty (TIOCNOTTY): %m");
    else
      plog(XLOG_INFO, "released controlling tty using ioctl(TIOCNOTTY)");
    close(fd);
  }
  return;
#else
  FUNC5(XLOG_ERROR, "unable to release controlling tty");
#endif /* not TIOCNOTTY */
}