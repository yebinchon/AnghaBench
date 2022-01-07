
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int tk_status; } ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ count; } ;
struct TYPE_3__ {scalar_t__ count; scalar_t__ eof; } ;
struct nfs_read_data {TYPE_2__ args; TYPE_1__ res; struct nfs_pgio_header* header; } ;
struct nfs_pgio_header {scalar_t__ io_start; scalar_t__ good_bytes; int lock; int flags; } ;
typedef scalar_t__ loff_t ;


 int NFS_IOHDR_EOF ;
 int NFS_IOHDR_ERROR ;
 int clear_bit (int ,int *) ;
 scalar_t__ nfs_readpage_result (struct rpc_task*,struct nfs_read_data*) ;
 int nfs_readpage_retry (struct rpc_task*,struct nfs_read_data*) ;
 int nfs_set_pgio_error (struct nfs_pgio_header*,int ,scalar_t__) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs_readpage_result_common(struct rpc_task *task, void *calldata)
{
 struct nfs_read_data *data = calldata;
 struct nfs_pgio_header *hdr = data->header;


 if (nfs_readpage_result(task, data) != 0)
  return;
 if (task->tk_status < 0)
  nfs_set_pgio_error(hdr, task->tk_status, data->args.offset);
 else if (data->res.eof) {
  loff_t bound;

  bound = data->args.offset + data->res.count;
  spin_lock(&hdr->lock);
  if (bound < hdr->io_start + hdr->good_bytes) {
   set_bit(NFS_IOHDR_EOF, &hdr->flags);
   clear_bit(NFS_IOHDR_ERROR, &hdr->flags);
   hdr->good_bytes = bound - hdr->io_start;
  }
  spin_unlock(&hdr->lock);
 } else if (data->res.count != data->args.count)
  nfs_readpage_retry(task, data);
}
