
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct socket {struct sock* sk; } ;
struct sock {int sk_family; } ;
struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;


 int EINVAL ;
 int PF_INET ;
 int PF_INET6 ;
 int SMK_LABELLEN ;
 int netlbl_secattr_destroy (struct netlbl_lsm_secattr*) ;
 int netlbl_secattr_init (struct netlbl_lsm_secattr*) ;
 int netlbl_skbuff_getattr (struct sk_buff*,int,struct netlbl_lsm_secattr*) ;
 int smack_from_secattr (struct netlbl_lsm_secattr*,char*) ;
 scalar_t__ smack_to_secid (char*) ;

__attribute__((used)) static int smack_socket_getpeersec_dgram(struct socket *sock,
      struct sk_buff *skb, u32 *secid)

{
 struct netlbl_lsm_secattr secattr;
 struct sock *sk;
 char smack[SMK_LABELLEN];
 int family = PF_INET;
 u32 s;
 int rc;




 if (sock != ((void*)0)) {
  sk = sock->sk;
  if (sk->sk_family != PF_INET && sk->sk_family != PF_INET6)
   return 0;
  family = sk->sk_family;
 }



 netlbl_secattr_init(&secattr);
 rc = netlbl_skbuff_getattr(skb, family, &secattr);
 if (rc == 0)
  smack_from_secattr(&secattr, smack);
 netlbl_secattr_destroy(&secattr);




 if (rc != 0)
  return rc;

 s = smack_to_secid(smack);
 if (s == 0)
  return -EINVAL;

 *secid = s;
 return 0;
}
