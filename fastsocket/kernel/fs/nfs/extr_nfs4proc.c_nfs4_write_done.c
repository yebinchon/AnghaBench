
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_2__ {int seq_res; } ;
struct nfs_write_data {int (* write_done_cb ) (struct rpc_task*,struct nfs_write_data*) ;int args; TYPE_1__ res; } ;


 int EAGAIN ;
 int nfs4_sequence_done (struct rpc_task*,int *) ;
 int nfs4_write_done_cb (struct rpc_task*,struct nfs_write_data*) ;
 scalar_t__ nfs4_write_stateid_changed (struct rpc_task*,int *) ;
 int stub1 (struct rpc_task*,struct nfs_write_data*) ;

__attribute__((used)) static int nfs4_write_done(struct rpc_task *task, struct nfs_write_data *data)
{
 if (!nfs4_sequence_done(task, &data->res.seq_res))
  return -EAGAIN;
 if (nfs4_write_stateid_changed(task, &data->args))
  return -EAGAIN;
 return data->write_done_cb ? data->write_done_cb(task, data) :
  nfs4_write_done_cb(task, data);
}
