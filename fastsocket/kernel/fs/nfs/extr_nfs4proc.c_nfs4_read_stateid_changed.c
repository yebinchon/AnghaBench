
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_status; } ;
struct nfs_readargs {int lock_context; int context; int stateid; } ;


 int FMODE_READ ;
 int nfs4_error_stateid_expired (int ) ;
 scalar_t__ nfs4_stateid_is_current (int *,int ,int ,int ) ;
 int rpc_restart_call_prepare (struct rpc_task*) ;

__attribute__((used)) static bool nfs4_read_stateid_changed(struct rpc_task *task,
  struct nfs_readargs *args)
{

 if (!nfs4_error_stateid_expired(task->tk_status) ||
  nfs4_stateid_is_current(&args->stateid,
    args->context,
    args->lock_context,
    FMODE_READ))
  return 0;
 rpc_restart_call_prepare(task);
 return 1;
}
