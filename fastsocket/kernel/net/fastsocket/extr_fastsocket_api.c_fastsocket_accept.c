
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sockaddr_len; int sockaddr; int flags; } ;
struct TYPE_4__ {TYPE_1__ accept_op; } ;
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
 int fsocket_accept (struct file*,int ,int ,int ) ;
 int sys_accept (int ,int ,int ) ;

__attribute__((used)) static int fastsocket_accept(struct fsocket_ioctl_arg *arg)
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
  DPRINTK(DEBUG, "Accept fastsocket %d\n", arg->fd);
  ret = fsocket_accept(tfile, arg->op.accept_op.sockaddr,
    arg->op.accept_op.sockaddr_len, arg->op.accept_op.flags);
 } else {
  DPRINTK(INFO, "Accept non-fastsocket %d\n", arg->fd);
  ret = sys_accept(arg->fd, arg->op.accept_op.sockaddr, arg->op.accept_op.sockaddr_len);
 }
 fput_light(tfile, fput_need);

 return ret;
}
