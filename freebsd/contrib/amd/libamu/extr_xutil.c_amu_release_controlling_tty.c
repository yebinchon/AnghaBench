
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOTTY ;
 scalar_t__ ENXIO ;
 int O_RDWR ;
 int TIOCNOTTY ;
 int XLOG_ERROR ;
 int XLOG_INFO ;
 int XLOG_WARNING ;
 int close (int) ;
 int dup2 (int,int) ;
 scalar_t__ errno ;
 int fflush (int ) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int open (char*,int ) ;
 int plog (int ,char*) ;
 scalar_t__ setsid () ;
 int stderr ;
 int stdin ;
 int stdout ;

void
amu_release_controlling_tty(void)
{
  int fd;
  fd = open("/dev/null", O_RDWR);
  if (fd < 0) {
    plog(XLOG_WARNING, "Could not open /dev/null for rw: %m");
  } else {
    fflush(stdin); close(0); dup2(fd, 0);
    fflush(stdout); close(1); dup2(fd, 1);
    fflush(stderr); close(2); dup2(fd, 2);
    close(fd);
  }
  plog(XLOG_ERROR, "unable to release controlling tty");

}
