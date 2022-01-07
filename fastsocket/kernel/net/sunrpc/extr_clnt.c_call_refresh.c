
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {TYPE_2__* tk_client; scalar_t__ tk_status; int tk_action; } ;
struct TYPE_4__ {TYPE_1__* cl_stats; } ;
struct TYPE_3__ {int rpcauthrefresh; } ;


 int call_refreshresult ;
 int dprint_status (struct rpc_task*) ;
 int rpcauth_refreshcred (struct rpc_task*) ;

__attribute__((used)) static void
call_refresh(struct rpc_task *task)
{
 dprint_status(task);

 task->tk_action = call_refreshresult;
 task->tk_status = 0;
 task->tk_client->cl_stats->rpcauthrefresh++;
 rpcauth_refreshcred(task);
}
