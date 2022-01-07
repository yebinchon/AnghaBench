
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nfs_renameres* rpc_resp; } ;
struct rpc_task {TYPE_1__ tk_msg; } ;
struct nfs_renameres {int new_cinfo; int old_cinfo; int server; int seq_res; } ;
struct inode {int dummy; } ;


 int EAGAIN ;
 int nfs4_async_handle_error (struct rpc_task*,int ,int *) ;
 int nfs4_sequence_done (struct rpc_task*,int *) ;
 int update_changeattr (struct inode*,int *) ;

__attribute__((used)) static int nfs4_proc_rename_done(struct rpc_task *task, struct inode *old_dir,
     struct inode *new_dir)
{
 struct nfs_renameres *res = task->tk_msg.rpc_resp;

 if (!nfs4_sequence_done(task, &res->seq_res))
  return 0;
 if (nfs4_async_handle_error(task, res->server, ((void*)0)) == -EAGAIN)
  return 0;

 update_changeattr(old_dir, &res->old_cinfo);
 update_changeattr(new_dir, &res->new_cinfo);
 return 1;
}
