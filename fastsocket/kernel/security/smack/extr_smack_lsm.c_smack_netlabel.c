
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_smack {scalar_t__ smk_out; } ;
struct sock {int sk_family; struct socket_smack* sk_security; } ;
struct netlbl_lsm_secattr {int dummy; } ;


 int SMACK_UNLABELED_SOCKET ;
 int bh_lock_sock_nested (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int netlbl_secattr_destroy (struct netlbl_lsm_secattr*) ;
 int netlbl_secattr_init (struct netlbl_lsm_secattr*) ;
 int netlbl_sock_delattr (struct sock*) ;
 int netlbl_sock_setattr (struct sock*,int ,struct netlbl_lsm_secattr*) ;
 scalar_t__ smack_net_ambient ;
 int smack_to_secattr (scalar_t__,struct netlbl_lsm_secattr*) ;

__attribute__((used)) static int smack_netlabel(struct sock *sk, int labeled)
{
 struct socket_smack *ssp = sk->sk_security;
 struct netlbl_lsm_secattr secattr;
 int rc = 0;
 local_bh_disable();
 bh_lock_sock_nested(sk);

 if (ssp->smk_out == smack_net_ambient ||
     labeled == SMACK_UNLABELED_SOCKET)
  netlbl_sock_delattr(sk);
 else {
  netlbl_secattr_init(&secattr);
  smack_to_secattr(ssp->smk_out, &secattr);
  rc = netlbl_sock_setattr(sk, sk->sk_family, &secattr);
  netlbl_secattr_destroy(&secattr);
 }

 bh_unlock_sock(sk);
 local_bh_enable();

 return rc;
}
