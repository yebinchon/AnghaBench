
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int tk_pid; TYPE_1__* tk_client; } ;
struct rpc_cred {int dummy; } ;
struct rpc_auth {TYPE_2__* au_ops; } ;
struct TYPE_4__ {int au_name; } ;
struct TYPE_3__ {struct rpc_auth* cl_auth; } ;


 int dprintk (char*,int ,int ) ;
 struct rpc_cred* rpcauth_lookupcred (struct rpc_auth*,int) ;

__attribute__((used)) static struct rpc_cred *
rpcauth_bind_new_cred(struct rpc_task *task, int lookupflags)
{
 struct rpc_auth *auth = task->tk_client->cl_auth;

 dprintk("RPC: %5u looking up %s cred\n",
  task->tk_pid, auth->au_ops->au_name);
 return rpcauth_lookupcred(auth, lookupflags);
}
