
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_inode {int pipe; int * ops; int waitq; } ;
struct poll_table_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {scalar_t__ private_data; TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_inode; } ;


 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 struct rpc_inode* RPC_I (int ) ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int
rpc_pipe_poll(struct file *filp, struct poll_table_struct *wait)
{
 struct rpc_inode *rpci;
 unsigned int mask = 0;

 rpci = RPC_I(filp->f_path.dentry->d_inode);
 poll_wait(filp, &rpci->waitq, wait);

 mask = POLLOUT | POLLWRNORM;
 if (rpci->ops == ((void*)0))
  mask |= POLLERR | POLLHUP;
 if (filp->private_data || !list_empty(&rpci->pipe))
  mask |= POLLIN | POLLRDNORM;
 return mask;
}
