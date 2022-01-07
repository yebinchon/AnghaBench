
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu; } ;
struct TYPE_4__ {TYPE_1__ spawn_op; } ;
struct fsocket_ioctl_arg {int fd; TYPE_2__ op; } ;
struct file {int f_mode; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,...) ;
 int EINVAL ;
 int EPRINTK_LIMIT (int ,char*,int) ;
 int ERR ;
 int FMODE_FASTSOCKET ;
 int INFO ;
 struct file* fget_light (int,int*) ;
 int fput_light (struct file*,int) ;
 int fsocket_spawn (struct file*,int,int) ;

__attribute__((used)) static int fastsocket_spawn_listen(struct fsocket_ioctl_arg *arg)
{
 struct file *tfile;
 int fd, tcpu, ret, fput_needed;

 DPRINTK(DEBUG, "Listen spawn listen fd %d\n", arg->fd);

 fd = arg->fd;
 tcpu = arg->op.spawn_op.cpu;

 tfile = fget_light(fd, &fput_needed);
 if (tfile == ((void*)0)) {
  EPRINTK_LIMIT(ERR, "fd [%d] doesn't exist!\n", fd);
  return -EINVAL;
 }

 if (tfile->f_mode & FMODE_FASTSOCKET)
  ret = fsocket_spawn(tfile, fd, tcpu);
 else {
  DPRINTK(INFO, "Spawn non fastsocket\n");
  return -EINVAL;
 }

 fput_light(tfile, fput_needed);

 return ret;
}
