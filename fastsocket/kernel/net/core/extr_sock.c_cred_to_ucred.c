
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct ucred {int uid; int gid; int pid; } ;
struct pid {int dummy; } ;
struct cred {int egid; int euid; } ;


 struct user_namespace* current_user_ns () ;
 int pid_vnr (struct pid*) ;
 int user_ns_map_gid (struct user_namespace*,struct cred const*,int ) ;
 int user_ns_map_uid (struct user_namespace*,struct cred const*,int ) ;

void cred_to_ucred(struct pid *pid, const struct cred *cred,
     struct ucred *ucred)
{
 ucred->pid = pid_vnr(pid);
 ucred->uid = ucred->gid = -1;
 if (cred) {
  struct user_namespace *current_ns = current_user_ns();

  ucred->uid = user_ns_map_uid(current_ns, cred, cred->euid);
  ucred->gid = user_ns_map_gid(current_ns, cred, cred->egid);
 }
}
