
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsocket_ioctl_arg {int fd; } ;
struct file {int f_mode; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,int ) ;
 int EINVAL ;
 int EPRINTK_LIMIT (int ,char*) ;
 int ERR ;
 int FMODE_FASTSOCKET ;
 int INFO ;
 struct file* fget_light (int ,int*) ;
 int fput_light (struct file*,int) ;
 int fsocket_close (int ) ;
 int sys_close (int ) ;

__attribute__((used)) static int fastsocket_close(struct fsocket_ioctl_arg * arg)
{
 int error;
 struct file *tfile;
 int fput_need;

 DPRINTK(DEBUG,"Close fastsocket %d\n", arg->fd);

 tfile = fget_light(arg->fd, &fput_need);
 if (tfile == ((void*)0)) {
  EPRINTK_LIMIT(ERR, "Close file don't exist!\n");
  return -EINVAL;
 }

 if (tfile->f_mode & FMODE_FASTSOCKET) {
  fput_light(tfile, fput_need);
  error = fsocket_close(arg->fd);
 } else {
  fput_light(tfile, fput_need);
  DPRINTK(INFO, "Close non fastsocket %d\n", arg->fd);
  error = sys_close(arg->fd);
 }

 return error;
}
