
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {int * rpc_proc; } ;
struct TYPE_2__ {int stable; } ;
struct nfs_write_data {TYPE_1__ args; } ;


 size_t NFSPROC_WRITE ;
 int NFS_FILE_SYNC ;
 int * nfs_procedures ;

__attribute__((used)) static void nfs_proc_write_setup(struct nfs_write_data *data, struct rpc_message *msg)
{

 data->args.stable = NFS_FILE_SYNC;
 msg->rpc_proc = &nfs_procedures[NFSPROC_WRITE];
}
