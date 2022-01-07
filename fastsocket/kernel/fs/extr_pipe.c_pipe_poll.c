
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pipe_inode_info {int nrbufs; scalar_t__ w_counter; int readers; int writers; int wait; } ;
struct inode {struct pipe_inode_info* i_pipe; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int f_mode; scalar_t__ f_version; TYPE_2__ f_path; } ;
typedef int poll_table ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int PIPE_BUFFERS ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int
pipe_poll(struct file *filp, poll_table *wait)
{
 unsigned int mask;
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct pipe_inode_info *pipe = inode->i_pipe;
 int nrbufs;

 poll_wait(filp, &pipe->wait, wait);


 nrbufs = pipe->nrbufs;
 mask = 0;
 if (filp->f_mode & FMODE_READ) {
  mask = (nrbufs > 0) ? POLLIN | POLLRDNORM : 0;
  if (!pipe->writers && filp->f_version != pipe->w_counter)
   mask |= POLLHUP;
 }

 if (filp->f_mode & FMODE_WRITE) {
  mask |= (nrbufs < PIPE_BUFFERS) ? POLLOUT | POLLWRNORM : 0;




  if (!pipe->readers)
   mask |= POLLERR;
 }

 return mask;
}
