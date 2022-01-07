
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_inode {scalar_t__ nreaders; scalar_t__ nwriters; TYPE_1__* ops; } ;
struct inode {int i_mutex; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {int (* open_pipe ) (struct inode*) ;} ;


 int ENXIO ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 struct rpc_inode* RPC_I (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct inode*) ;

__attribute__((used)) static int
rpc_pipe_open(struct inode *inode, struct file *filp)
{
 struct rpc_inode *rpci = RPC_I(inode);
 int first_open;
 int res = -ENXIO;

 mutex_lock(&inode->i_mutex);
 if (rpci->ops == ((void*)0))
  goto out;
 first_open = rpci->nreaders == 0 && rpci->nwriters == 0;
 if (first_open && rpci->ops->open_pipe) {
  res = rpci->ops->open_pipe(inode);
  if (res)
   goto out;
 }
 if (filp->f_mode & FMODE_READ)
  rpci->nreaders++;
 if (filp->f_mode & FMODE_WRITE)
  rpci->nwriters++;
 res = 0;
out:
 mutex_unlock(&inode->i_mutex);
 return res;
}
