
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_params {int dummy; } ;
struct ipc_ops {int (* getnew ) (struct ipc_namespace*,struct ipc_params*) ;} ;
struct ipc_namespace {int dummy; } ;
struct ipc_ids {int rw_mutex; int ipcs_idr; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int down_write (int *) ;
 int idr_pre_get (int *,int ) ;
 int stub1 (struct ipc_namespace*,struct ipc_params*) ;
 int up_write (int *) ;

__attribute__((used)) static int ipcget_new(struct ipc_namespace *ns, struct ipc_ids *ids,
  struct ipc_ops *ops, struct ipc_params *params)
{
 int err;
retry:
 err = idr_pre_get(&ids->ipcs_idr, GFP_KERNEL);

 if (!err)
  return -ENOMEM;

 down_write(&ids->rw_mutex);
 err = ops->getnew(ns, params);
 up_write(&ids->rw_mutex);

 if (err == -EAGAIN)
  goto retry;

 return err;
}
