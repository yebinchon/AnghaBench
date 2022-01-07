
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int sk; } ;
struct inode_security_struct {int sclass; int sid; } ;
struct TYPE_4__ {int sk; } ;
struct TYPE_5__ {TYPE_1__ net; } ;
struct common_audit_data {TYPE_2__ u; } ;
struct TYPE_6__ {struct inode_security_struct* i_security; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int NET ;
 int SOCKET__SENDTO ;
 TYPE_3__* SOCK_INODE (struct socket*) ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;

__attribute__((used)) static int selinux_socket_unix_may_send(struct socket *sock,
     struct socket *other)
{
 struct inode_security_struct *isec;
 struct inode_security_struct *other_isec;
 struct common_audit_data ad;
 int err;

 isec = SOCK_INODE(sock)->i_security;
 other_isec = SOCK_INODE(other)->i_security;

 COMMON_AUDIT_DATA_INIT(&ad, NET);
 ad.u.net.sk = other->sk;

 err = avc_has_perm(isec->sid, other_isec->sid,
      isec->sclass, SOCKET__SENDTO, &ad);
 if (err)
  return err;

 return 0;
}
