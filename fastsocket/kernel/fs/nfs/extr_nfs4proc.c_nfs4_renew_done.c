
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {scalar_t__ tk_status; } ;
struct nfs_client {int cl_res_state; } ;
struct nfs4_renewdata {unsigned long timestamp; struct nfs_client* client; } ;


 int NFS_CS_RENEWD ;
 int do_renew_lease (struct nfs_client*,unsigned long) ;
 int nfs4_schedule_lease_recovery (struct nfs_client*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs4_renew_done(struct rpc_task *task, void *calldata)
{
 struct nfs4_renewdata *data = calldata;
 struct nfs_client *clp = data->client;
 unsigned long timestamp = data->timestamp;

 if (task->tk_status < 0) {

  if (test_bit(NFS_CS_RENEWD, &clp->cl_res_state) != 0)
   nfs4_schedule_lease_recovery(clp);
  return;
 }
 do_renew_lease(clp, timestamp);
}
