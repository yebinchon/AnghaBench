
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_call_ops {int dummy; } ;
struct nfs_read_data {TYPE_1__* header; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* inode; } ;


 int NFS_CLIENT (struct inode*) ;
 int nfs_initiate_read (int ,struct nfs_read_data*,struct rpc_call_ops const*) ;

__attribute__((used)) static int nfs_do_read(struct nfs_read_data *data,
  const struct rpc_call_ops *call_ops)
{
 struct inode *inode = data->header->inode;

 return nfs_initiate_read(NFS_CLIENT(inode), data, call_ops);
}
