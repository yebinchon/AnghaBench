
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {scalar_t__ nlbl_state; } ;
struct netlbl_lsm_secattr {int dummy; } ;


 int EACCES ;
 int ENOMSG ;
 int IPPROTO_IP ;
 int IP_OPTIONS ;
 scalar_t__ NLBL_CONNLABELED ;
 scalar_t__ NLBL_LABELED ;
 int lock_sock (struct sock*) ;
 int netlbl_secattr_destroy (struct netlbl_lsm_secattr*) ;
 int netlbl_secattr_init (struct netlbl_lsm_secattr*) ;
 int netlbl_sock_getattr (struct sock*,struct netlbl_lsm_secattr*) ;
 int release_sock (struct sock*) ;

int selinux_netlbl_socket_setsockopt(struct socket *sock,
         int level,
         int optname)
{
 int rc = 0;
 struct sock *sk = sock->sk;
 struct sk_security_struct *sksec = sk->sk_security;
 struct netlbl_lsm_secattr secattr;

 if (level == IPPROTO_IP && optname == IP_OPTIONS &&
     (sksec->nlbl_state == NLBL_LABELED ||
      sksec->nlbl_state == NLBL_CONNLABELED)) {
  netlbl_secattr_init(&secattr);
  lock_sock(sk);
  rc = netlbl_sock_getattr(sk, &secattr);
  release_sock(sk);
  if (rc == 0)
   rc = -EACCES;
  else if (rc == -ENOMSG)
   rc = 0;
  netlbl_secattr_destroy(&secattr);
 }

 return rc;
}
