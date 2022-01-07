
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int how; } ;
struct TYPE_4__ {TYPE_1__ shutdown_op; } ;
struct fsocket_ioctl_arg {TYPE_2__ op; int fd; } ;
struct file {int f_mode; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,int ) ;
 int ENOENT ;
 int EPRINTK_LIMIT (int ,char*) ;
 int ERR ;
 int FMODE_FASTSOCKET ;
 int INFO ;
 struct file* fget_light (int ,int*) ;
 int fput_light (struct file*,int) ;
 int fsocket_shutdown_listen (struct file*,int ) ;
 int sys_shutdown (int ,int ) ;

__attribute__((used)) static int fastsocket_shutdown_listen(struct fsocket_ioctl_arg *arg)
{
 int ret;
 struct file *tfile;
 int fput_need;

 tfile = fget_light(arg->fd, &fput_need);
 if (tfile == ((void*)0)) {
  EPRINTK_LIMIT(ERR, "Accept file don't exist!\n");
  return -ENOENT;
 }

 if (tfile->f_mode & FMODE_FASTSOCKET) {
  DPRINTK(DEBUG, "Shutdown fastsocket %d\n", arg->fd);
  ret = fsocket_shutdown_listen(tfile, arg->op.shutdown_op.how);
 } else {
  DPRINTK(INFO, "Shutdown non-fastsocket %d\n", arg->fd);
  ret = sys_shutdown(arg->fd, arg->op.shutdown_op.how);
 }
 fput_light(tfile, fput_need);

 return ret;
}
