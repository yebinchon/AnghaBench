
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sock {scalar_t__ sk_family; struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int peer_sid; } ;
struct sk_buff {scalar_t__ protocol; } ;


 int ETH_P_IP ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ htons (int ) ;
 int selinux_skb_peerlbl_sid (struct sk_buff*,scalar_t__,int *) ;

__attribute__((used)) static void selinux_inet_conn_established(struct sock *sk, struct sk_buff *skb)
{
 u16 family = sk->sk_family;
 struct sk_security_struct *sksec = sk->sk_security;


 if (family == PF_INET6 && skb->protocol == htons(ETH_P_IP))
  family = PF_INET;

 selinux_skb_peerlbl_sid(skb, family, &sksec->peer_sid);
}
