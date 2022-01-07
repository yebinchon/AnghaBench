
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int * rpc_proc; } ;
struct inode {int dummy; } ;


 size_t NFSPROC_REMOVE ;
 int * nfs_procedures ;

__attribute__((used)) static void
nfs_proc_unlink_setup(struct rpc_message *msg, struct inode *dir)
{
 msg->rpc_proc = &nfs_procedures[NFSPROC_REMOVE];
}
