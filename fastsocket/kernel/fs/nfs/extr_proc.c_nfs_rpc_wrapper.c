
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int dummy; } ;
struct rpc_clnt {int dummy; } ;


 int EKEYEXPIRED ;
 int ERESTARTSYS ;
 int NFS_JUKEBOX_RETRY_TIME ;
 int current ;
 int fatal_signal_pending (int ) ;
 int freezable_schedule_timeout_killable (int ) ;
 int rpc_call_sync (struct rpc_clnt*,struct rpc_message*,int) ;

__attribute__((used)) static int
nfs_rpc_wrapper(struct rpc_clnt *clnt, struct rpc_message *msg, int flags)
{
 int res;
 do {
  res = rpc_call_sync(clnt, msg, flags);
  if (res != -EKEYEXPIRED)
   break;
  freezable_schedule_timeout_killable(NFS_JUKEBOX_RETRY_TIME);
  res = -ERESTARTSYS;
 } while (!fatal_signal_pending(current));
 return res;
}
