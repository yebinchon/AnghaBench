
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mutex; TYPE_1__* i_pipe; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {int writers; int readers; } ;


 int ENOENT ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
pipe_rdwr_open(struct inode *inode, struct file *filp)
{
 int ret = -ENOENT;

 mutex_lock(&inode->i_mutex);

 if (inode->i_pipe) {
  ret = 0;
  if (filp->f_mode & FMODE_READ)
   inode->i_pipe->readers++;
  if (filp->f_mode & FMODE_WRITE)
   inode->i_pipe->writers++;
 }

 mutex_unlock(&inode->i_mutex);

 return ret;
}
