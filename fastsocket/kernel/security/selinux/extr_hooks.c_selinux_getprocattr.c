
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_struct {int dummy; } ;
struct task_security_struct {int sockcreate_sid; int keycreate_sid; int create_sid; int exec_sid; int osid; int sid; } ;
struct TYPE_2__ {struct task_security_struct* security; } ;


 int EINVAL ;
 int PROCESS__GETATTR ;
 TYPE_1__* __task_cred (struct task_struct*) ;
 struct task_struct* current ;
 int current_has_perm (struct task_struct*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_sid_to_context (int ,char**,unsigned int*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int selinux_getprocattr(struct task_struct *p,
          char *name, char **value)
{
 const struct task_security_struct *__tsec;
 u32 sid;
 int error;
 unsigned len;

 if (current != p) {
  error = current_has_perm(p, PROCESS__GETATTR);
  if (error)
   return error;
 }

 rcu_read_lock();
 __tsec = __task_cred(p)->security;

 if (!strcmp(name, "current"))
  sid = __tsec->sid;
 else if (!strcmp(name, "prev"))
  sid = __tsec->osid;
 else if (!strcmp(name, "exec"))
  sid = __tsec->exec_sid;
 else if (!strcmp(name, "fscreate"))
  sid = __tsec->create_sid;
 else if (!strcmp(name, "keycreate"))
  sid = __tsec->keycreate_sid;
 else if (!strcmp(name, "sockcreate"))
  sid = __tsec->sockcreate_sid;
 else
  goto invalid;
 rcu_read_unlock();

 if (!sid)
  return 0;

 error = security_sid_to_context(sid, value, &len);
 if (error)
  return error;
 return len;

invalid:
 rcu_read_unlock();
 return -EINVAL;
}
