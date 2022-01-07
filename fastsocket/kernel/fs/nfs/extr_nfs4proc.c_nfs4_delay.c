
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;


 int ERESTARTSYS ;
 long NFS4_POLL_RETRY_MAX ;
 long NFS4_POLL_RETRY_MIN ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 int freezable_schedule_timeout_killable (long) ;
 int might_sleep () ;

__attribute__((used)) static int nfs4_delay(struct rpc_clnt *clnt, long *timeout)
{
 int res = 0;

 might_sleep();

 if (*timeout <= 0)
  *timeout = NFS4_POLL_RETRY_MIN;
 if (*timeout > NFS4_POLL_RETRY_MAX)
  *timeout = NFS4_POLL_RETRY_MAX;
 freezable_schedule_timeout_killable(*timeout);
 if (fatal_signal_pending(current))
  res = -ERESTARTSYS;
 *timeout <<= 1;
 return res;
}
