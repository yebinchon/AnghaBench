
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_6__ {int server; int stateid; } ;
struct TYPE_4__ {int stateid; } ;
struct nfs4_opendata {scalar_t__ rpc_status; int rpc_done; int timestamp; TYPE_3__ o_res; TYPE_2__* owner; TYPE_1__ c_res; } ;
struct TYPE_5__ {int so_seqid; } ;


 int nfs4_stateid_copy (int *,int *) ;
 int nfs_confirm_seqid (int *,int ) ;
 int renew_lease (int ,int ) ;

__attribute__((used)) static void nfs4_open_confirm_done(struct rpc_task *task, void *calldata)
{
 struct nfs4_opendata *data = calldata;

 data->rpc_status = task->tk_status;
 if (data->rpc_status == 0) {
  nfs4_stateid_copy(&data->o_res.stateid, &data->c_res.stateid);
  nfs_confirm_seqid(&data->owner->so_seqid, 0);
  renew_lease(data->o_res.server, data->timestamp);
  data->rpc_done = 1;
 }
}
