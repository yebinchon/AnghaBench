
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {scalar_t__ tk_status; } ;
struct nlm_rqst {struct nlm_block* a_block; } ;
struct nlm_block {int b_daemon; int b_list; } ;


 int HZ ;
 int dprintk (char*) ;
 scalar_t__ list_empty (int *) ;
 int nlm_blocked_lock ;
 int nlmsvc_insert_block_locked (struct nlm_block*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int svc_wake_up (int ) ;

__attribute__((used)) static void nlmsvc_grant_callback(struct rpc_task *task, void *data)
{
 struct nlm_rqst *call = data;
 struct nlm_block *block = call->a_block;
 unsigned long timeout;

 dprintk("lockd: GRANT_MSG RPC callback\n");

 spin_lock(&nlm_blocked_lock);
 if (list_empty(&block->b_list))
  goto out;




 if (task->tk_status < 0) {

  timeout = 10 * HZ;
 } else {

  timeout = 60 * HZ;
 }
 nlmsvc_insert_block_locked(block, timeout);
 svc_wake_up(block->b_daemon);
out:
 spin_unlock(&nlm_blocked_lock);
}
