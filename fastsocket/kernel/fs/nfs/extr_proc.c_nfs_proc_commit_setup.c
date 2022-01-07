
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int dummy; } ;
struct nfs_commit_data {int dummy; } ;


 int BUG () ;

__attribute__((used)) static void
nfs_proc_commit_setup(struct nfs_commit_data *data, struct rpc_message *msg)
{
 BUG();
}
