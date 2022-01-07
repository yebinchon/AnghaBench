
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct kern_ipc_perm {scalar_t__ cuid; scalar_t__ uid; } ;
struct ipc_ids {int rw_mutex; } ;
struct ipc64_perm {int mode; int gid; int uid; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 struct kern_ipc_perm* ERR_PTR (int) ;
 int IPC_SET ;
 scalar_t__ IS_ERR (struct kern_ipc_perm*) ;
 int PTR_ERR (struct kern_ipc_perm*) ;
 int audit_ipc_obj (struct kern_ipc_perm*) ;
 int audit_ipc_set_perm (int,int ,int ,int ) ;
 scalar_t__ capable (int ) ;
 scalar_t__ current_euid () ;
 int down_write (int *) ;
 struct kern_ipc_perm* ipc_lock_check (struct ipc_ids*,int) ;
 int ipc_unlock (struct kern_ipc_perm*) ;
 int up_write (int *) ;

struct kern_ipc_perm *ipcctl_pre_down(struct ipc_ids *ids, int id, int cmd,
          struct ipc64_perm *perm, int extra_perm)
{
 struct kern_ipc_perm *ipcp;
 uid_t euid;
 int err;

 down_write(&ids->rw_mutex);
 ipcp = ipc_lock_check(ids, id);
 if (IS_ERR(ipcp)) {
  err = PTR_ERR(ipcp);
  goto out_up;
 }

 audit_ipc_obj(ipcp);
 if (cmd == IPC_SET)
  audit_ipc_set_perm(extra_perm, perm->uid,
      perm->gid, perm->mode);

 euid = current_euid();
 if (euid == ipcp->cuid ||
     euid == ipcp->uid || capable(CAP_SYS_ADMIN))
  return ipcp;

 err = -EPERM;
 ipc_unlock(ipcp);
out_up:
 up_write(&ids->rw_mutex);
 return ERR_PTR(err);
}
