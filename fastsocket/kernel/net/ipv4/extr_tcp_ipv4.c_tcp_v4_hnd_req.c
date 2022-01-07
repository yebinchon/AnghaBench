
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {scalar_t__ ack; int syn; int rst; int dest; int source; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct iphdr {int daddr; int saddr; } ;
struct TYPE_2__ {int opt; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 scalar_t__ TCP_TIME_WAIT ;
 int bh_lock_sock (struct sock*) ;
 struct sock* cookie_v4_check (struct sock*,struct sk_buff*,int *) ;
 struct request_sock* inet_csk_search_req (struct sock*,struct request_sock***,int ,int ,int ) ;
 int inet_iif (struct sk_buff*) ;
 struct sock* inet_lookup_established (int ,int *,int ,int ,int ,int ,int ) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 struct sock* tcp_check_req (struct sock*,struct sk_buff*,struct request_sock*,struct request_sock**) ;
 int tcp_hashinfo ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;

__attribute__((used)) static struct sock *tcp_v4_hnd_req(struct sock *sk, struct sk_buff *skb)
{
 struct tcphdr *th = tcp_hdr(skb);
 const struct iphdr *iph = ip_hdr(skb);
 struct sock *nsk;
 struct request_sock **prev;

 struct request_sock *req = inet_csk_search_req(sk, &prev, th->source,
             iph->saddr, iph->daddr);
 if (req)
  return tcp_check_req(sk, skb, req, prev);

 nsk = inet_lookup_established(sock_net(sk), &tcp_hashinfo, iph->saddr,
   th->source, iph->daddr, th->dest, inet_iif(skb));

 if (nsk) {
  if (nsk->sk_state != TCP_TIME_WAIT) {
   bh_lock_sock(nsk);
   return nsk;
  }
  inet_twsk_put(inet_twsk(nsk));
  return ((void*)0);
 }





 return sk;
}
