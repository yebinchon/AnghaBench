
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_commit_data {TYPE_1__* mds_ops; } ;
struct TYPE_2__ {int (* rpc_call_done ) (struct rpc_task*,void*) ;} ;


 int stub1 (struct rpc_task*,void*) ;

__attribute__((used)) static void filelayout_write_commit_done(struct rpc_task *task, void *data)
{
 struct nfs_commit_data *wdata = data;


 wdata->mds_ops->rpc_call_done(task, data);
}
