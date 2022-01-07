
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct kern_ipc_perm {int mode; scalar_t__ cuid; scalar_t__ uid; int gid; int cgid; } ;


 int CAP_IPC_OWNER ;
 int audit_ipc_obj (struct kern_ipc_perm*) ;
 int capable (int ) ;
 scalar_t__ current_euid () ;
 scalar_t__ in_group_p (int ) ;
 int security_ipc_permission (struct kern_ipc_perm*,short) ;

int ipcperms (struct kern_ipc_perm *ipcp, short flag)
{
 uid_t euid = current_euid();
 int requested_mode, granted_mode;

 audit_ipc_obj(ipcp);
 requested_mode = (flag >> 6) | (flag >> 3) | flag;
 granted_mode = ipcp->mode;
 if (euid == ipcp->cuid ||
     euid == ipcp->uid)
  granted_mode >>= 6;
 else if (in_group_p(ipcp->cgid) || in_group_p(ipcp->gid))
  granted_mode >>= 3;

 if ((requested_mode & ~granted_mode & 0007) &&
     !capable(CAP_IPC_OWNER))
  return -1;

 return security_ipc_permission(ipcp, flag);
}
