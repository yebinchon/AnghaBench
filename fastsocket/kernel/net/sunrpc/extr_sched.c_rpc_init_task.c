
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task_setup {int workqueue; scalar_t__ priority; int callback_data; TYPE_1__* callback_ops; int flags; } ;
struct rpc_task {int tk_garb_retry; int tk_cred_retry; int tk_rebind_retry; int tk_start; int tk_action; TYPE_1__* tk_ops; int tk_workqueue; int tk_owner; scalar_t__ tk_priority; int tk_task; int tk_calldata; int tk_flags; int tk_count; } ;
struct TYPE_5__ {int tgid; } ;
struct TYPE_4__ {int * rpc_call_prepare; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ RPC_PRIORITY_LOW ;
 int atomic_set (int *,int) ;
 TYPE_2__* current ;
 int dprintk (char*,int ) ;
 int ktime_get () ;
 int memset (struct rpc_task*,int ,int) ;
 int rpc_prepare_task ;
 int task_pid_nr (TYPE_2__*) ;

__attribute__((used)) static void rpc_init_task(struct rpc_task *task, const struct rpc_task_setup *task_setup_data)
{
 memset(task, 0, sizeof(*task));
 atomic_set(&task->tk_count, 1);
 task->tk_flags = task_setup_data->flags;
 task->tk_ops = task_setup_data->callback_ops;
 task->tk_calldata = task_setup_data->callback_data;
 INIT_LIST_HEAD(&task->tk_task);


 task->tk_garb_retry = 2;
 task->tk_cred_retry = 2;
 task->tk_rebind_retry = 2;

 task->tk_priority = task_setup_data->priority - RPC_PRIORITY_LOW;
 task->tk_owner = current->tgid;


 task->tk_workqueue = task_setup_data->workqueue;

 if (task->tk_ops->rpc_call_prepare != ((void*)0))
  task->tk_action = rpc_prepare_task;


 task->tk_start = ktime_get();

 dprintk("RPC:       new task initialized, procpid %u\n",
    task_pid_nr(current));
}
