
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_pipe_msg {int list; int errno; } ;
struct rpc_inode {scalar_t__ nwriters; scalar_t__ nreaders; TYPE_1__* ops; scalar_t__ pipelen; int pipe; } ;
struct inode {int i_mutex; int i_lock; } ;
struct file {int f_mode; scalar_t__ private_data; } ;
struct TYPE_2__ {int (* release_pipe ) (struct inode*) ;int (* destroy_msg ) (struct rpc_pipe_msg*) ;} ;


 int EAGAIN ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int LIST_HEAD (int ) ;
 struct rpc_inode* RPC_I (struct inode*) ;
 int free_list ;
 int list_del_init (int *) ;
 int list_splice_init (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpc_purge_list (struct rpc_inode*,int *,int (*) (struct rpc_pipe_msg*),int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rpc_pipe_msg*) ;
 int stub2 (struct inode*) ;

__attribute__((used)) static int
rpc_pipe_release(struct inode *inode, struct file *filp)
{
 struct rpc_inode *rpci = RPC_I(inode);
 struct rpc_pipe_msg *msg;
 int last_close;

 mutex_lock(&inode->i_mutex);
 if (rpci->ops == ((void*)0))
  goto out;
 msg = (struct rpc_pipe_msg *)filp->private_data;
 if (msg != ((void*)0)) {
  spin_lock(&inode->i_lock);
  msg->errno = -EAGAIN;
  list_del_init(&msg->list);
  spin_unlock(&inode->i_lock);
  rpci->ops->destroy_msg(msg);
 }
 if (filp->f_mode & FMODE_WRITE)
  rpci->nwriters --;
 if (filp->f_mode & FMODE_READ) {
  rpci->nreaders --;
  if (rpci->nreaders == 0) {
   LIST_HEAD(free_list);
   spin_lock(&inode->i_lock);
   list_splice_init(&rpci->pipe, &free_list);
   rpci->pipelen = 0;
   spin_unlock(&inode->i_lock);
   rpc_purge_list(rpci, &free_list,
     rpci->ops->destroy_msg, -EAGAIN);
  }
 }
 last_close = rpci->nwriters == 0 && rpci->nreaders == 0;
 if (last_close && rpci->ops->release_pipe)
  rpci->ops->release_pipe(inode);
out:
 mutex_unlock(&inode->i_mutex);
 return 0;
}
