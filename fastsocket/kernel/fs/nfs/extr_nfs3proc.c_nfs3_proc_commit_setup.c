
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int * rpc_proc; } ;
struct nfs_commit_data {int dummy; } ;


 size_t NFS3PROC_COMMIT ;
 int * nfs3_procedures ;

__attribute__((used)) static void nfs3_proc_commit_setup(struct nfs_commit_data *data, struct rpc_message *msg)
{
 msg->rpc_proc = &nfs3_procedures[NFS3PROC_COMMIT];
}
