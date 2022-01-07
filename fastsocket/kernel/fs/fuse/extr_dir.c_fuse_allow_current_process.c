
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int flags; scalar_t__ user_id; scalar_t__ group_id; } ;
struct cred {scalar_t__ euid; scalar_t__ suid; scalar_t__ uid; scalar_t__ egid; scalar_t__ sgid; scalar_t__ gid; } ;


 int FUSE_ALLOW_OTHER ;
 struct cred* current_cred () ;

int fuse_allow_current_process(struct fuse_conn *fc)
{
 const struct cred *cred;

 if (fc->flags & FUSE_ALLOW_OTHER)
  return 1;

 cred = current_cred();
 if (cred->euid == fc->user_id &&
     cred->suid == fc->user_id &&
     cred->uid == fc->user_id &&
     cred->egid == fc->group_id &&
     cred->sgid == fc->group_id &&
     cred->gid == fc->group_id)
  return 1;

 return 0;
}
