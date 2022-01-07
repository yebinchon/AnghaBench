
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {scalar_t__ nlbl_state; } ;
struct netlbl_lsm_secattr {int dummy; } ;


 scalar_t__ AF_UNSPEC ;
 int ENOMEM ;
 scalar_t__ NLBL_CONNLABELED ;
 scalar_t__ NLBL_REQSKB ;
 int bh_lock_sock_nested (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int netlbl_conn_setattr (struct sock*,struct sockaddr*,struct netlbl_lsm_secattr*) ;
 int netlbl_sock_delattr (struct sock*) ;
 struct netlbl_lsm_secattr* selinux_netlbl_sock_genattr (struct sock*) ;

int selinux_netlbl_socket_connect(struct sock *sk, struct sockaddr *addr)
{
 int rc;
 struct sk_security_struct *sksec = sk->sk_security;
 struct netlbl_lsm_secattr *secattr;

 if (sksec->nlbl_state != NLBL_REQSKB &&
     sksec->nlbl_state != NLBL_CONNLABELED)
  return 0;

 local_bh_disable();
 bh_lock_sock_nested(sk);




 if (addr->sa_family == AF_UNSPEC) {
  netlbl_sock_delattr(sk);
  sksec->nlbl_state = NLBL_REQSKB;
  rc = 0;
  goto socket_connect_return;
 }
 secattr = selinux_netlbl_sock_genattr(sk);
 if (secattr == ((void*)0)) {
  rc = -ENOMEM;
  goto socket_connect_return;
 }
 rc = netlbl_conn_setattr(sk, addr, secattr);
 if (rc == 0)
  sksec->nlbl_state = NLBL_CONNLABELED;

socket_connect_return:
 bh_unlock_sock(sk);
 local_bh_enable();
 return rc;
}
