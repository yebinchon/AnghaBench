
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs_commit_data {int dummy; } ;


 int BUG () ;

__attribute__((used)) static void nfs_proc_commit_rpc_prepare(struct rpc_task *task, struct nfs_commit_data *data)
{
 BUG();
}
