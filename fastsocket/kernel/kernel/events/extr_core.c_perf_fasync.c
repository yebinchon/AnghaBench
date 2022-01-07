
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_event {int fasync; } ;
struct inode {int i_mutex; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {struct perf_event* private_data; TYPE_2__ f_path; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int fasync_helper (int,struct file*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int perf_fasync(int fd, struct file *filp, int on)
{
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct perf_event *event = filp->private_data;
 int retval;

 mutex_lock(&inode->i_mutex);
 retval = fasync_helper(fd, filp, on, &event->fasync);
 mutex_unlock(&inode->i_mutex);

 if (retval < 0)
  return retval;

 return 0;
}
