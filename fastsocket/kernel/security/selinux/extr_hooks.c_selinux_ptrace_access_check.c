
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int FILE__READ ;
 int PROCESS__PTRACE ;
 unsigned int PTRACE_MODE_READ ;
 int SECCLASS_FILE ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int cap_ptrace_access_check (struct task_struct*,unsigned int) ;
 int current_has_perm (struct task_struct*,int ) ;
 int current_sid () ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int selinux_ptrace_access_check(struct task_struct *child,
         unsigned int mode)
{
 int rc;

 rc = cap_ptrace_access_check(child, mode);
 if (rc)
  return rc;

 if (mode == PTRACE_MODE_READ) {
  u32 sid = current_sid();
  u32 csid = task_sid(child);
  return avc_has_perm(sid, csid, SECCLASS_FILE, FILE__READ, ((void*)0));
 }

 return current_has_perm(child, PROCESS__PTRACE);
}
