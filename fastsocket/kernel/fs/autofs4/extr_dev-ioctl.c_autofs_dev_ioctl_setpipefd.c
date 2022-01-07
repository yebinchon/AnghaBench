
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {TYPE_2__* f_op; } ;
struct autofs_sb_info {int pipefd; int wq_mutex; scalar_t__ catatonic; struct file* pipe; int oz_pgrp; } ;
struct TYPE_3__ {int pipefd; } ;
struct autofs_dev_ioctl {TYPE_1__ setpipefd; } ;
struct TYPE_4__ {int write; } ;


 int EBUSY ;
 int EINVAL ;
 int EPIPE ;
 int current ;
 struct file* fget (int) ;
 int fput (struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int task_pgrp_nr (int ) ;

__attribute__((used)) static int autofs_dev_ioctl_setpipefd(struct file *fp,
          struct autofs_sb_info *sbi,
          struct autofs_dev_ioctl *param)
{
 int pipefd;
 int err = 0;

 if (param->setpipefd.pipefd == -1)
  return -EINVAL;

 pipefd = param->setpipefd.pipefd;

 mutex_lock(&sbi->wq_mutex);
 if (!sbi->catatonic) {
  mutex_unlock(&sbi->wq_mutex);
  return -EBUSY;
 } else {
  struct file *pipe = fget(pipefd);
  if (!pipe->f_op || !pipe->f_op->write) {
   err = -EPIPE;
   fput(pipe);
   goto out;
  }
  sbi->oz_pgrp = task_pgrp_nr(current);
  sbi->pipefd = pipefd;
  sbi->pipe = pipe;
  sbi->catatonic = 0;
 }
out:
 mutex_unlock(&sbi->wq_mutex);
 return err;
}
