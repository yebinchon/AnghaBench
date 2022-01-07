
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef scalar_t__ u16 ;
struct sock {scalar_t__ sk_family; struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sid; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct request_sock {void* peer_secid; void* secid; } ;


 int ETH_P_IP ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ htons (int ) ;
 int selinux_conn_sid (int ,void*,void**) ;
 int selinux_netlbl_inet_conn_request (struct request_sock*,scalar_t__) ;
 int selinux_skb_peerlbl_sid (struct sk_buff*,scalar_t__,void**) ;

__attribute__((used)) static int selinux_inet_conn_request(struct sock *sk, struct sk_buff *skb,
         struct request_sock *req)
{
 struct sk_security_struct *sksec = sk->sk_security;
 int err;
 u16 family = sk->sk_family;
 u32 connsid;
 u32 peersid;


 if (family == PF_INET6 && skb->protocol == htons(ETH_P_IP))
  family = PF_INET;

 err = selinux_skb_peerlbl_sid(skb, family, &peersid);
 if (err)
  return err;
 err = selinux_conn_sid(sksec->sid, peersid, &connsid);
 if (err)
  return err;
 req->secid = connsid;
 req->peer_secid = peersid;

 return selinux_netlbl_inet_conn_request(req, family);
}
