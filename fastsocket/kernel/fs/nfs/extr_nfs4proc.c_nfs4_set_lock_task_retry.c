
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long NFS4_LOCK_MAXTIMEOUT ;
 int freezable_schedule_timeout_killable (unsigned long) ;

__attribute__((used)) static unsigned long
nfs4_set_lock_task_retry(unsigned long timeout)
{
 freezable_schedule_timeout_killable(timeout);
 timeout <<= 1;
 if (timeout > NFS4_LOCK_MAXTIMEOUT)
  return NFS4_LOCK_MAXTIMEOUT;
 return timeout;
}
