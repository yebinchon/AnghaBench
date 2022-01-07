
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_family; } ;
struct netlbl_lsm_secattr {int dummy; } ;




 int ENOMSG ;
 int EPROTONOSUPPORT ;
 int cipso_v4_sock_getattr (struct sock*,struct netlbl_lsm_secattr*) ;

int netlbl_sock_getattr(struct sock *sk,
   struct netlbl_lsm_secattr *secattr)
{
 int ret_val;

 switch (sk->sk_family) {
 case 129:
  ret_val = cipso_v4_sock_getattr(sk, secattr);
  break;





 default:
  ret_val = -EPROTONOSUPPORT;
 }

 return ret_val;
}
