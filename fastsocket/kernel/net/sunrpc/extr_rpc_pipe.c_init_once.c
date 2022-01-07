
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_inode {int * ops; int queue_timeout; int waitq; scalar_t__ pipelen; int pipe; int in_downcall; int in_upcall; scalar_t__ nwriters; scalar_t__ nreaders; int * private; int vfs_inode; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int inode_init_once (int *) ;
 int rpc_timeout_upcall_queue ;

__attribute__((used)) static void
init_once(void *foo)
{
 struct rpc_inode *rpci = (struct rpc_inode *) foo;

 inode_init_once(&rpci->vfs_inode);
 rpci->private = ((void*)0);
 rpci->nreaders = 0;
 rpci->nwriters = 0;
 INIT_LIST_HEAD(&rpci->in_upcall);
 INIT_LIST_HEAD(&rpci->in_downcall);
 INIT_LIST_HEAD(&rpci->pipe);
 rpci->pipelen = 0;
 init_waitqueue_head(&rpci->waitq);
 INIT_DELAYED_WORK(&rpci->queue_timeout,
       rpc_timeout_upcall_queue);
 rpci->ops = ((void*)0);
}
