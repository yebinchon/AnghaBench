
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_read_data {int task; struct nfs_pgio_header* header; } ;
struct nfs_pgio_header {TYPE_1__* mds_ops; int pnfs_error; } ;
struct TYPE_2__ {int (* rpc_release ) (struct nfs_read_data*) ;int (* rpc_call_done ) (int *,struct nfs_read_data*) ;} ;


 int __nfs4_read_done_cb (struct nfs_read_data*) ;
 scalar_t__ likely (int) ;
 int pnfs_ld_handle_read_error (struct nfs_read_data*) ;
 int stub1 (int *,struct nfs_read_data*) ;
 int stub2 (struct nfs_read_data*) ;

void pnfs_ld_read_done(struct nfs_read_data *data)
{
 struct nfs_pgio_header *hdr = data->header;

 if (likely(!hdr->pnfs_error)) {
  __nfs4_read_done_cb(data);
  hdr->mds_ops->rpc_call_done(&data->task, data);
 } else
  pnfs_ld_handle_read_error(data);
 hdr->mds_ops->rpc_release(data);
}
