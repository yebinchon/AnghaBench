
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcphdr {int doff; scalar_t__ fin; scalar_t__ syn; int seq; int ack_seq; scalar_t__ ack; scalar_t__ rst; } ;
struct tcp_md5sig_key {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int daddr; } ;


 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int ipv6_unicast_destination (struct sk_buff*) ;
 scalar_t__ ntohl (int ) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 struct tcp_md5sig_key* tcp_v6_md5_do_lookup (struct sock*,int *) ;
 int tcp_v6_send_response (struct sk_buff*,scalar_t__,scalar_t__,int ,int ,struct tcp_md5sig_key*,int) ;

__attribute__((used)) static void tcp_v6_send_reset(struct sock *sk, struct sk_buff *skb)
{
 struct tcphdr *th = tcp_hdr(skb);
 u32 seq = 0, ack_seq = 0;
 struct tcp_md5sig_key *key = ((void*)0);

 if (th->rst)
  return;

 if (!ipv6_unicast_destination(skb))
  return;






 if (th->ack)
  seq = ntohl(th->ack_seq);
 else
  ack_seq = ntohl(th->seq) + th->syn + th->fin + skb->len -
     (th->doff << 2);

 tcp_v6_send_response(skb, seq, ack_seq, 0, 0, key, 1);
}
