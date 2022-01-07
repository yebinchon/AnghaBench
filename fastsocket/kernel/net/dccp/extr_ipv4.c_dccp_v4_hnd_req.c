
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct iphdr {int daddr; int saddr; } ;
struct dccp_hdr {int dccph_dport; int dccph_sport; } ;


 scalar_t__ DCCP_TIME_WAIT ;
 int bh_lock_sock (struct sock*) ;
 struct sock* dccp_check_req (struct sock*,struct sk_buff*,struct request_sock*,struct request_sock**) ;
 int dccp_hashinfo ;
 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 struct request_sock* inet_csk_search_req (struct sock*,struct request_sock***,int ,int ,int ) ;
 int inet_iif (struct sk_buff*) ;
 struct sock* inet_lookup_established (int ,int *,int ,int ,int ,int ,int ) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static struct sock *dccp_v4_hnd_req(struct sock *sk, struct sk_buff *skb)
{
 const struct dccp_hdr *dh = dccp_hdr(skb);
 const struct iphdr *iph = ip_hdr(skb);
 struct sock *nsk;
 struct request_sock **prev;

 struct request_sock *req = inet_csk_search_req(sk, &prev,
             dh->dccph_sport,
             iph->saddr, iph->daddr);
 if (req != ((void*)0))
  return dccp_check_req(sk, skb, req, prev);

 nsk = inet_lookup_established(sock_net(sk), &dccp_hashinfo,
          iph->saddr, dh->dccph_sport,
          iph->daddr, dh->dccph_dport,
          inet_iif(skb));
 if (nsk != ((void*)0)) {
  if (nsk->sk_state != DCCP_TIME_WAIT) {
   bh_lock_sock(nsk);
   return nsk;
  }
  inet_twsk_put(inet_twsk(nsk));
  return ((void*)0);
 }

 return sk;
}
