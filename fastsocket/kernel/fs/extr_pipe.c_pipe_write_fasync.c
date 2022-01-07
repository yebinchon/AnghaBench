
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_mutex; TYPE_3__* i_pipe; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {int fasync_writers; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int fasync_helper (int,struct file*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
pipe_write_fasync(int fd, struct file *filp, int on)
{
 struct inode *inode = filp->f_path.dentry->d_inode;
 int retval;

 mutex_lock(&inode->i_mutex);
 retval = fasync_helper(fd, filp, on, &inode->i_pipe->fasync_writers);
 mutex_unlock(&inode->i_mutex);

 return retval;
}
