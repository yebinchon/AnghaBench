
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdesc {scalar_t__ id; int fd; } ;


 int EV_READ ;
 int LOG_ERR ;
 int RPOLL_IN ;
 int errno ;
 scalar_t__ evSelectFD (int ,int ,int ,int ,struct fdesc*,scalar_t__*) ;
 scalar_t__ evTestID (scalar_t__) ;
 int evctx ;
 int input ;
 scalar_t__ poll_register (int ,int ,struct fdesc*,int ) ;
 int syslog (int ,char*,int ) ;

int
fd_resume(void *p)
{
 struct fdesc *f = p;
 int err;
 if (evTestID(f->id))
  return (0);
 if (evSelectFD(evctx, f->fd, EV_READ, input, f, &f->id)) {
  err = errno;
  syslog(LOG_ERR, "select fd %d: %m", f->fd);
  errno = err;
  return (-1);
 }

 return (0);
}
