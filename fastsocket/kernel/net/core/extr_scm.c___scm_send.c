
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct socket {TYPE_1__* ops; } ;
struct TYPE_8__ {int gid; int uid; int pid; } ;
struct scm_cookie {TYPE_2__* fp; struct cred* cred; TYPE_3__ creds; struct pid* pid; } ;
struct pid {int dummy; } ;
struct msghdr {int dummy; } ;
struct cred {int egid; int gid; int euid; int uid; } ;
struct cmsghdr {scalar_t__ cmsg_level; int cmsg_type; int cmsg_len; } ;
struct TYPE_7__ {int count; } ;
struct TYPE_6__ {int family; } ;


 int CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 int CMSG_LEN (int) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 int CMSG_OK (struct msghdr*,struct cmsghdr*) ;
 int EINVAL ;
 int ENOMEM ;
 int ESRCH ;
 int PF_UNIX ;


 scalar_t__ SOL_SOCKET ;
 struct pid* find_get_pid (int ) ;
 int kfree (TYPE_2__*) ;
 int memcpy (TYPE_3__*,int ,int) ;
 int pid_vnr (struct pid*) ;
 struct cred* prepare_creds () ;
 int put_cred (struct cred*) ;
 int put_pid (struct pid*) ;
 int scm_check_creds (TYPE_3__*) ;
 int scm_destroy (struct scm_cookie*) ;
 int scm_fp_copy (struct cmsghdr*,TYPE_2__**) ;

int __scm_send(struct socket *sock, struct msghdr *msg, struct scm_cookie *p)
{
 struct cmsghdr *cmsg;
 int err;

 for (cmsg = CMSG_FIRSTHDR(msg); cmsg; cmsg = CMSG_NXTHDR(msg, cmsg))
 {
  err = -EINVAL;
  if (!CMSG_OK(msg, cmsg))
   goto error;

  if (cmsg->cmsg_level != SOL_SOCKET)
   continue;

  switch (cmsg->cmsg_type)
  {
  case 128:
   if (!sock->ops || sock->ops->family != PF_UNIX)
    goto error;
   err=scm_fp_copy(cmsg, &p->fp);
   if (err<0)
    goto error;
   break;
  case 129:
   if (cmsg->cmsg_len != CMSG_LEN(sizeof(struct ucred)))
    goto error;
   memcpy(&p->creds, CMSG_DATA(cmsg), sizeof(struct ucred));
   err = scm_check_creds(&p->creds);
   if (err)
    goto error;

   if (!p->pid || pid_vnr(p->pid) != p->creds.pid) {
    struct pid *pid;
    err = -ESRCH;
    pid = find_get_pid(p->creds.pid);
    if (!pid)
     goto error;
    put_pid(p->pid);
    p->pid = pid;
   }

   if (!p->cred ||
       (p->cred->euid != p->creds.uid) ||
       (p->cred->egid != p->creds.gid)) {
    struct cred *cred;
    err = -ENOMEM;
    cred = prepare_creds();
    if (!cred)
     goto error;

    cred->uid = cred->euid = p->creds.uid;
    cred->gid = cred->egid = p->creds.gid;
    if (p->cred)
     put_cred(p->cred);
    p->cred = cred;
   }
   break;
  default:
   goto error;
  }
 }

 if (p->fp && !p->fp->count)
 {
  kfree(p->fp);
  p->fp = ((void*)0);
 }
 return 0;

error:
 scm_destroy(p);
 return err;
}
