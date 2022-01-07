
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {TYPE_3__* sk; } ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sid; int peer_sid; } ;
struct inode_security_struct {int sid; int sclass; } ;
struct TYPE_5__ {TYPE_3__* sk; } ;
struct TYPE_6__ {TYPE_1__ net; } ;
struct common_audit_data {TYPE_2__ u; } ;
struct TYPE_8__ {struct inode_security_struct* i_security; } ;
struct TYPE_7__ {struct sk_security_struct* sk_security; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int NET ;
 TYPE_4__* SOCK_INODE (struct socket*) ;
 int UNIX_STREAM_SOCKET__CONNECTTO ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;
 int security_sid_mls_copy (int ,int ,int *) ;

__attribute__((used)) static int selinux_socket_unix_stream_connect(struct socket *sock,
           struct socket *other,
           struct sock *newsk)
{
 struct sk_security_struct *ssec;
 struct inode_security_struct *isec;
 struct inode_security_struct *other_isec;
 struct common_audit_data ad;
 int err;

 isec = SOCK_INODE(sock)->i_security;
 other_isec = SOCK_INODE(other)->i_security;

 COMMON_AUDIT_DATA_INIT(&ad, NET);
 ad.u.net.sk = other->sk;

 err = avc_has_perm(isec->sid, other_isec->sid,
      isec->sclass,
      UNIX_STREAM_SOCKET__CONNECTTO, &ad);
 if (err)
  return err;


 ssec = sock->sk->sk_security;
 ssec->peer_sid = other_isec->sid;


 ssec = newsk->sk_security;
 ssec->peer_sid = isec->sid;
 err = security_sid_mls_copy(other_isec->sid, ssec->peer_sid, &ssec->sid);

 return err;
}
