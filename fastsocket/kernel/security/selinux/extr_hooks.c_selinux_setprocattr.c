
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct task_struct {int dummy; } ;
struct task_security_struct {scalar_t__ sid; scalar_t__ sockcreate_sid; scalar_t__ keycreate_sid; scalar_t__ create_sid; scalar_t__ exec_sid; } ;
struct cred {struct task_security_struct* security; } ;


 int CAP_MAC_ADMIN ;
 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int PROCESS__DYNTRANSITION ;
 int PROCESS__PTRACE ;
 int PROCESS__SETCURRENT ;
 int PROCESS__SETEXEC ;
 int PROCESS__SETFSCREATE ;
 int PROCESS__SETKEYCREATE ;
 int PROCESS__SETSOCKCREATE ;
 int SECCLASS_PROCESS ;
 int abort_creds (struct cred*) ;
 int avc_has_perm (scalar_t__,scalar_t__,int ,int ,int *) ;
 int capable (int ) ;
 int commit_creds (struct cred*) ;
 struct task_struct* current ;
 int current_has_perm (struct task_struct*,int ) ;
 int current_is_single_threaded () ;
 int may_create_key (scalar_t__,struct task_struct*) ;
 struct cred* prepare_creds () ;
 int security_bounded_transition (scalar_t__,scalar_t__) ;
 int security_context_to_sid (void*,size_t,scalar_t__*) ;
 int security_context_to_sid_force (void*,size_t,scalar_t__*) ;
 int strcmp (char*,char*) ;
 int task_lock (struct task_struct*) ;
 scalar_t__ task_sid (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 struct task_struct* tracehook_tracer_task (struct task_struct*) ;

__attribute__((used)) static int selinux_setprocattr(struct task_struct *p,
          char *name, void *value, size_t size)
{
 struct task_security_struct *tsec;
 struct task_struct *tracer;
 struct cred *new;
 u32 sid = 0, ptsid;
 int error;
 char *str = value;

 if (current != p) {


  return -EACCES;
 }






 if (!strcmp(name, "exec"))
  error = current_has_perm(p, PROCESS__SETEXEC);
 else if (!strcmp(name, "fscreate"))
  error = current_has_perm(p, PROCESS__SETFSCREATE);
 else if (!strcmp(name, "keycreate"))
  error = current_has_perm(p, PROCESS__SETKEYCREATE);
 else if (!strcmp(name, "sockcreate"))
  error = current_has_perm(p, PROCESS__SETSOCKCREATE);
 else if (!strcmp(name, "current"))
  error = current_has_perm(p, PROCESS__SETCURRENT);
 else
  error = -EINVAL;
 if (error)
  return error;


 if (size && str[1] && str[1] != '\n') {
  if (str[size-1] == '\n') {
   str[size-1] = 0;
   size--;
  }
  error = security_context_to_sid(value, size, &sid);
  if (error == -EINVAL && !strcmp(name, "fscreate")) {
   if (!capable(CAP_MAC_ADMIN))
    return error;
   error = security_context_to_sid_force(value, size,
             &sid);
  }
  if (error)
   return error;
 }

 new = prepare_creds();
 if (!new)
  return -ENOMEM;







 tsec = new->security;
 if (!strcmp(name, "exec")) {
  tsec->exec_sid = sid;
 } else if (!strcmp(name, "fscreate")) {
  tsec->create_sid = sid;
 } else if (!strcmp(name, "keycreate")) {
  error = may_create_key(sid, p);
  if (error)
   goto abort_change;
  tsec->keycreate_sid = sid;
 } else if (!strcmp(name, "sockcreate")) {
  tsec->sockcreate_sid = sid;
 } else if (!strcmp(name, "current")) {
  error = -EINVAL;
  if (sid == 0)
   goto abort_change;


  error = -EPERM;
  if (!current_is_single_threaded()) {
   error = security_bounded_transition(tsec->sid, sid);
   if (error)
    goto abort_change;
  }


  error = avc_has_perm(tsec->sid, sid, SECCLASS_PROCESS,
         PROCESS__DYNTRANSITION, ((void*)0));
  if (error)
   goto abort_change;



  ptsid = 0;
  task_lock(p);
  tracer = tracehook_tracer_task(p);
  if (tracer)
   ptsid = task_sid(tracer);
  task_unlock(p);

  if (tracer) {
   error = avc_has_perm(ptsid, sid, SECCLASS_PROCESS,
          PROCESS__PTRACE, ((void*)0));
   if (error)
    goto abort_change;
  }

  tsec->sid = sid;
 } else {
  error = -EINVAL;
  goto abort_change;
 }

 commit_creds(new);
 return size;

abort_change:
 abort_creds(new);
 return error;
}
