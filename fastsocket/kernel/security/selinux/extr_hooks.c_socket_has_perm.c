
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct task_struct {int dummy; } ;
struct socket {int sk; } ;
struct inode_security_struct {scalar_t__ sid; int sclass; } ;
struct TYPE_5__ {int sk; } ;
struct TYPE_4__ {TYPE_2__ net; } ;
struct common_audit_data {TYPE_1__ u; } ;
struct TYPE_6__ {struct inode_security_struct* i_security; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int NET ;
 scalar_t__ SECINITSID_KERNEL ;
 TYPE_3__* SOCK_INODE (struct socket*) ;
 int avc_has_perm (int ,scalar_t__,int ,int ,struct common_audit_data*) ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int socket_has_perm(struct task_struct *task, struct socket *sock,
      u32 perms)
{
 struct inode_security_struct *isec;
 struct common_audit_data ad;
 u32 sid;
 int err = 0;

 isec = SOCK_INODE(sock)->i_security;

 if (isec->sid == SECINITSID_KERNEL)
  goto out;
 sid = task_sid(task);

 COMMON_AUDIT_DATA_INIT(&ad, NET);
 ad.u.net.sk = sock->sk;
 err = avc_has_perm(sid, isec->sid, isec->sclass, perms, &ad);

out:
 return err;
}
