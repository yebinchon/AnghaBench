
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_7__ {TYPE_2__* context; } ;
struct nfs_write_data {TYPE_3__ args; TYPE_1__* header; } ;
struct TYPE_8__ {int (* write_rpc_prepare ) (struct rpc_task*,struct nfs_write_data*) ;} ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int inode; } ;


 int EIO ;
 int NFS_CONTEXT_BAD ;
 TYPE_4__* NFS_PROTO (int ) ;
 int rpc_exit (struct rpc_task*,int ) ;
 int stub1 (struct rpc_task*,struct nfs_write_data*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

void nfs_write_prepare(struct rpc_task *task, void *calldata)
{
 struct nfs_write_data *data = calldata;
 NFS_PROTO(data->header->inode)->write_rpc_prepare(task, data);
 if (unlikely(test_bit(NFS_CONTEXT_BAD, &data->args.context->flags)))
  rpc_exit(task, -EIO);
}
