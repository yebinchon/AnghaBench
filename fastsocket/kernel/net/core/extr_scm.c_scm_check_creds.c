
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ pid; scalar_t__ uid; scalar_t__ gid; } ;
struct cred {scalar_t__ uid; scalar_t__ euid; scalar_t__ suid; scalar_t__ gid; scalar_t__ egid; scalar_t__ sgid; } ;


 int CAP_SETGID ;
 int CAP_SETUID ;
 int CAP_SYS_ADMIN ;
 int EPERM ;
 scalar_t__ capable (int ) ;
 int current ;
 struct cred* current_cred () ;
 scalar_t__ task_tgid_vnr (int ) ;

__attribute__((used)) static __inline__ int scm_check_creds(struct ucred *creds)
{
 const struct cred *cred = current_cred();

 if ((creds->pid == task_tgid_vnr(current) || capable(CAP_SYS_ADMIN)) &&
     ((creds->uid == cred->uid || creds->uid == cred->euid ||
       creds->uid == cred->suid) || capable(CAP_SETUID)) &&
     ((creds->gid == cred->gid || creds->gid == cred->egid ||
       creds->gid == cred->sgid) || capable(CAP_SETGID))) {
        return 0;
 }
 return -EPERM;
}
