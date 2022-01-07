
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;


 scalar_t__ PROCESS__SIGNULL ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (scalar_t__,int ,int ,scalar_t__,int *) ;
 int current_has_perm (struct task_struct*,scalar_t__) ;
 scalar_t__ signal_to_av (int) ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int selinux_task_kill(struct task_struct *p, struct siginfo *info,
    int sig, u32 secid)
{
 u32 perm;
 int rc;

 if (!sig)
  perm = PROCESS__SIGNULL;
 else
  perm = signal_to_av(sig);
 if (secid)
  rc = avc_has_perm(secid, task_sid(p),
      SECCLASS_PROCESS, perm, ((void*)0));
 else
  rc = current_has_perm(p, perm);
 return rc;
}
