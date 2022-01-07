
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_message {int * rpc_proc; } ;
struct TYPE_6__ {int seq_res; struct nfs_server* server; int * fattr; } ;
struct TYPE_5__ {int seq_args; int * bitmask; } ;
struct nfs_write_data {TYPE_3__ res; TYPE_2__ args; int timestamp; scalar_t__ write_done_cb; TYPE_1__* header; } ;
struct nfs_server {int * cache_consistency_bitmask; } ;
struct TYPE_4__ {int inode; } ;


 size_t NFSPROC4_CLNT_WRITE ;
 struct nfs_server* NFS_SERVER (int ) ;
 int jiffies ;
 int nfs41_init_sequence (int *,int *,int) ;
 int * nfs4_procedures ;
 scalar_t__ nfs4_write_done_cb ;
 int nfs4_write_need_cache_consistency_data (struct nfs_write_data*) ;

__attribute__((used)) static void nfs4_proc_write_setup(struct nfs_write_data *data, struct rpc_message *msg)
{
 struct nfs_server *server = NFS_SERVER(data->header->inode);

 if (!nfs4_write_need_cache_consistency_data(data)) {
  data->args.bitmask = ((void*)0);
  data->res.fattr = ((void*)0);
 } else
  data->args.bitmask = server->cache_consistency_bitmask;

 if (!data->write_done_cb)
  data->write_done_cb = nfs4_write_done_cb;
 data->res.server = server;
 data->timestamp = jiffies;

 msg->rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_WRITE];
 nfs41_init_sequence(&data->args.seq_args, &data->res.seq_res, 1);
}
