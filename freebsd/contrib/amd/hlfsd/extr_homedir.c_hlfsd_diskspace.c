
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int MAXPATHLEN ;
 int O_CREAT ;
 int O_RDWR ;
 int XLOG_ERROR ;
 int close (int) ;
 scalar_t__ getpid () ;
 int open (char*,int,int) ;
 int plog (int ,char*,char*,...) ;
 int strlen (char*) ;
 scalar_t__ unlink (char*) ;
 int write (int,char*,int) ;
 int xsnprintf (char*,int,char*,char*,long) ;

__attribute__((used)) static int
hlfsd_diskspace(char *path)
{
  char buf[MAXPATHLEN];
  int fd, len;

  xsnprintf(buf, sizeof(buf), "%s/._hlfstmp_%lu", path, (long) getpid());
  if ((fd = open(buf, O_RDWR | O_CREAT, 0600)) < 0) {
    plog(XLOG_ERROR, "cannot open %s: %m", buf);
    return -1;
  }
  len = strlen(buf);
  if (write(fd, buf, len) < len) {
    plog(XLOG_ERROR, "cannot write \"%s\" (%d bytes) to %s : %m", buf, len, buf);
    close(fd);
    unlink(buf);
    return -1;
  }
  if (unlink(buf) < 0) {
    plog(XLOG_ERROR, "cannot unlink %s : %m", buf);
  }
  close(fd);
  return 0;
}
