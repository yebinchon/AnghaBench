
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ENOTDIR ;
 int F_DUPFD_CLOEXEC ;
 int INTOFF ;
 int INTON ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int error (char*) ;
 int errorwithstatus (int,char*,char const*,int ) ;
 int fcntl (int,int ,int) ;
 int open (char const*,int) ;
 int setinputfd (int,int) ;
 int strerror (int) ;

void
setinputfile(const char *fname, int push)
{
 int e;
 int fd;
 int fd2;

 INTOFF;
 if ((fd = open(fname, O_RDONLY | O_CLOEXEC)) < 0) {
  e = errno;
  errorwithstatus(e == ENOENT || e == ENOTDIR ? 127 : 126,
      "cannot open %s: %s", fname, strerror(e));
 }
 if (fd < 10) {
  fd2 = fcntl(fd, F_DUPFD_CLOEXEC, 10);
  close(fd);
  if (fd2 < 0)
   error("Out of file descriptors");
  fd = fd2;
 }
 setinputfd(fd, push);
 INTON;
}
