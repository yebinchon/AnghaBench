
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_write_data {int task; struct nfs_pgio_header* header; } ;
struct nfs_pgio_header {TYPE_1__* mds_ops; int pnfs_error; } ;
struct TYPE_2__ {int (* rpc_release ) (struct nfs_write_data*) ;int (* rpc_call_done ) (int *,struct nfs_write_data*) ;} ;


 int pnfs_ld_handle_write_error (struct nfs_write_data*) ;
 int pnfs_set_layoutcommit (struct nfs_write_data*) ;
 int stub1 (int *,struct nfs_write_data*) ;
 int stub2 (struct nfs_write_data*) ;

void pnfs_ld_write_done(struct nfs_write_data *data)
{
 struct nfs_pgio_header *hdr = data->header;

 if (!hdr->pnfs_error) {
  pnfs_set_layoutcommit(data);
  hdr->mds_ops->rpc_call_done(&data->task, data);
 } else
  pnfs_ld_handle_write_error(data);
 hdr->mds_ops->rpc_release(data);
}
