
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sock {scalar_t__ sk_family; struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sclass; int sid; } ;
struct inode_security_struct {int sclass; int sid; } ;
struct TYPE_2__ {struct inode_security_struct* i_security; } ;


 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ PF_UNIX ;
 TYPE_1__* SOCK_INODE (struct socket*) ;

__attribute__((used)) static void selinux_sock_graft(struct sock *sk, struct socket *parent)
{
 struct inode_security_struct *isec = SOCK_INODE(parent)->i_security;
 struct sk_security_struct *sksec = sk->sk_security;

 if (sk->sk_family == PF_INET || sk->sk_family == PF_INET6 ||
     sk->sk_family == PF_UNIX)
  isec->sid = sksec->sid;
 sksec->sclass = isec->sclass;
}
