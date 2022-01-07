
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task_setup {int rpc_client; int flags; int workqueue; struct nfs_unlinkdata* callback_data; int * callback_ops; struct rpc_message* rpc_message; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int rpc_cred; TYPE_2__* rpc_resp; TYPE_1__* rpc_argp; } ;
struct TYPE_5__ {int dir_attr; } ;
struct TYPE_4__ {int fh; int name; } ;
struct nfs_unlinkdata {TYPE_2__ res; TYPE_1__ args; int dir; int cred; } ;
struct inode {int i_sb; } ;
struct dentry {int d_flags; int d_lock; struct nfs_unlinkdata* d_fsdata; int * d_inode; } ;
struct TYPE_6__ {int (* unlink_setup ) (struct rpc_message*,struct inode*) ;} ;


 int DCACHE_NFSFS_RENAMED ;
 int IS_ERR (struct rpc_task*) ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 TYPE_3__* NFS_PROTO (struct inode*) ;
 int RPC_TASK_ASYNC ;
 struct dentry* d_lookup (struct dentry*,int *) ;
 int dput (struct dentry*) ;
 int igrab (struct inode*) ;
 int nfs_copy_dname (struct dentry*,struct nfs_unlinkdata*) ;
 int nfs_dec_sillycount (struct inode*) ;
 int nfs_fattr_init (int ) ;
 int nfs_free_dname (struct nfs_unlinkdata*) ;
 int nfs_sb_active (int ) ;
 int nfs_unlink_ops ;
 int nfsiod_workqueue ;
 int rpc_put_task_async (struct rpc_task*) ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rpc_message*,struct inode*) ;

__attribute__((used)) static int nfs_do_call_unlink(struct dentry *parent, struct inode *dir, struct nfs_unlinkdata *data)
{
 struct rpc_message msg = {
  .rpc_argp = &data->args,
  .rpc_resp = &data->res,
  .rpc_cred = data->cred,
 };
 struct rpc_task_setup task_setup_data = {
  .rpc_message = &msg,
  .callback_ops = &nfs_unlink_ops,
  .callback_data = data,
  .workqueue = nfsiod_workqueue,
  .flags = RPC_TASK_ASYNC,
 };
 struct rpc_task *task;
 struct dentry *alias;

 alias = d_lookup(parent, &data->args.name);
 if (alias != ((void*)0)) {
  int ret;





  nfs_free_dname(data);
  ret = nfs_copy_dname(alias, data);
  spin_lock(&alias->d_lock);
  if (ret == 0 && alias->d_inode != ((void*)0) &&
      !(alias->d_flags & DCACHE_NFSFS_RENAMED)) {
   alias->d_fsdata = data;
   alias->d_flags |= DCACHE_NFSFS_RENAMED;
   ret = 1;
  } else
   ret = 0;
  spin_unlock(&alias->d_lock);
  nfs_dec_sillycount(dir);
  dput(alias);
  return ret;
 }
 data->dir = igrab(dir);
 if (!data->dir) {
  nfs_dec_sillycount(dir);
  return 0;
 }
 nfs_sb_active(dir->i_sb);
 data->args.fh = NFS_FH(dir);
 nfs_fattr_init(data->res.dir_attr);

 NFS_PROTO(dir)->unlink_setup(&msg, dir);

 task_setup_data.rpc_client = NFS_CLIENT(dir);
 task = rpc_run_task(&task_setup_data);
 if (!IS_ERR(task))
  rpc_put_task_async(task);
 return 1;
}
