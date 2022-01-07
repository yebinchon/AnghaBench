
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe_ops {int (* release_pipe ) (struct inode*) ;int destroy_msg; } ;
struct rpc_inode {scalar_t__ nreaders; scalar_t__ nwriters; int queue_timeout; struct rpc_pipe_ops* ops; scalar_t__ pipelen; int pipe; int in_upcall; } ;
struct inode {int i_mutex; int i_lock; } ;


 int EPIPE ;
 int LIST_HEAD (int ) ;
 struct rpc_inode* RPC_I (struct inode*) ;
 int cancel_delayed_work_sync (int *) ;
 int free_list ;
 int list_splice_init (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpc_inode_setowner (struct inode*,int *) ;
 int rpc_purge_list (struct rpc_inode*,int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inode*) ;

__attribute__((used)) static void
rpc_close_pipes(struct inode *inode)
{
 struct rpc_inode *rpci = RPC_I(inode);
 const struct rpc_pipe_ops *ops;
 int need_release;

 mutex_lock(&inode->i_mutex);
 ops = rpci->ops;
 if (ops != ((void*)0)) {
  LIST_HEAD(free_list);
  spin_lock(&inode->i_lock);
  need_release = rpci->nreaders != 0 || rpci->nwriters != 0;
  rpci->nreaders = 0;
  list_splice_init(&rpci->in_upcall, &free_list);
  list_splice_init(&rpci->pipe, &free_list);
  rpci->pipelen = 0;
  rpci->ops = ((void*)0);
  spin_unlock(&inode->i_lock);
  rpc_purge_list(rpci, &free_list, ops->destroy_msg, -EPIPE);
  rpci->nwriters = 0;
  if (need_release && ops->release_pipe)
   ops->release_pipe(inode);
  cancel_delayed_work_sync(&rpci->queue_timeout);
 }
 rpc_inode_setowner(inode, ((void*)0));
 mutex_unlock(&inode->i_mutex);
}
