
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_readres {scalar_t__ count; } ;
struct nfs_readargs {int count; int pgbase; int offset; } ;
struct nfs_read_data {int mds_offset; TYPE_1__* header; struct nfs_readres res; struct nfs_readargs args; } ;
struct TYPE_2__ {int inode; } ;


 int EIO ;
 int NFSIOS_SHORTREAD ;
 int nfs_inc_stats (int ,int ) ;
 int nfs_set_pgio_error (TYPE_1__*,int ,int ) ;
 int rpc_restart_call_prepare (struct rpc_task*) ;

__attribute__((used)) static void nfs_readpage_retry(struct rpc_task *task, struct nfs_read_data *data)
{
 struct nfs_readargs *argp = &data->args;
 struct nfs_readres *resp = &data->res;


 nfs_inc_stats(data->header->inode, NFSIOS_SHORTREAD);

 if (resp->count == 0) {
  nfs_set_pgio_error(data->header, -EIO, argp->offset);
  return;
 }

 data->mds_offset += resp->count;
 argp->offset += resp->count;
 argp->pgbase += resp->count;
 argp->count -= resp->count;
 rpc_restart_call_prepare(task);
}
