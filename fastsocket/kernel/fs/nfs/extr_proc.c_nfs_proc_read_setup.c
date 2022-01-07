
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int * rpc_proc; } ;
struct nfs_read_data {int dummy; } ;


 size_t NFSPROC_READ ;
 int * nfs_procedures ;

__attribute__((used)) static void nfs_proc_read_setup(struct nfs_read_data *data, struct rpc_message *msg)
{
 msg->rpc_proc = &nfs_procedures[NFSPROC_READ];
}
