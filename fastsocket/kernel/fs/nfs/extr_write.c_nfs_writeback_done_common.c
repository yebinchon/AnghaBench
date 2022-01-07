
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs_write_data {int dummy; } ;


 int nfs_writeback_done (struct rpc_task*,struct nfs_write_data*) ;

__attribute__((used)) static void nfs_writeback_done_common(struct rpc_task *task, void *calldata)
{
 struct nfs_write_data *data = calldata;

 nfs_writeback_done(task, data);
}
