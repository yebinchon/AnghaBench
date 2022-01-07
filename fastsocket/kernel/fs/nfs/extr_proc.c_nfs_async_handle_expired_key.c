
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_status; } ;


 int EKEYEXPIRED ;
 int NFS_JUKEBOX_RETRY_TIME ;
 int rpc_delay (struct rpc_task*,int ) ;
 int rpc_restart_call (struct rpc_task*) ;

__attribute__((used)) static int
nfs_async_handle_expired_key(struct rpc_task *task)
{
 if (task->tk_status != -EKEYEXPIRED)
  return 0;
 task->tk_status = 0;
 rpc_restart_call(task);
 rpc_delay(task, NFS_JUKEBOX_RETRY_TIME);
 return 1;
}
