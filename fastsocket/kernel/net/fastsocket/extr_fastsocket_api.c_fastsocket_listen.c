
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsocket_ioctl_arg {int fd; int backlog; } ;
struct file {int f_mode; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,int) ;
 int EINVAL ;
 int EPRINTK_LIMIT (int ,char*,int) ;
 int ERR ;
 int FMODE_BIND_EPI ;
 int FMODE_FASTSOCKET ;
 int FMODE_SINGLE_WAKEUP ;
 int INFO ;
 scalar_t__ enable_fast_epoll ;
 struct file* fget_light (int,int*) ;
 int fput_light (struct file*,int) ;
 int fsocket_listen (struct file*,int) ;
 int sys_listen (int,int) ;

__attribute__((used)) static int fastsocket_listen(struct fsocket_ioctl_arg *arg)
{
 struct file *tfile;
 int fd, backlog, ret, fput_needed;

 fd = arg->fd;
 backlog = arg->backlog;

 tfile = fget_light(fd, &fput_needed);
 if (tfile == ((void*)0)) {
  EPRINTK_LIMIT(ERR, "fd [%d] file doesn't exist!\n", fd);
  return -EINVAL;
 }

 if (tfile->f_mode & FMODE_FASTSOCKET) {
  DPRINTK(DEBUG,"Listen fastsocket %d\n", fd);
  if (enable_fast_epoll) {

   tfile->f_mode |= FMODE_SINGLE_WAKEUP;
   tfile->f_mode &= ~FMODE_BIND_EPI;
  }
  ret = fsocket_listen(tfile, backlog);
 } else {
  DPRINTK(INFO, "Listen non-fastsocket %d\n", fd);
  ret = sys_listen(fd, backlog);
 }

 fput_light(tfile, fput_needed);

 return ret;
}
