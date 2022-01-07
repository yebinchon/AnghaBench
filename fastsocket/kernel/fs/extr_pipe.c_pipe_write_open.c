
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mutex; TYPE_1__* i_pipe; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int writers; } ;


 int ENOENT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
pipe_write_open(struct inode *inode, struct file *filp)
{
 int ret = -ENOENT;

 mutex_lock(&inode->i_mutex);

 if (inode->i_pipe) {
  ret = 0;
  inode->i_pipe->writers++;
 }

 mutex_unlock(&inode->i_mutex);

 return ret;
}
