
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int seq; int dest; int source; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int daddr; int saddr; } ;
typedef int __u32 ;
typedef scalar_t__ __u16 ;


 int HZ ;
 int LINUX_MIB_SYNCOOKIESSENT ;
 int NET_INC_STATS_BH (int ,int ) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int jiffies ;
 scalar_t__ const* msstab ;
 int ntohl (int ) ;
 int secure_tcp_syn_cookie (int *,int *,int ,int ,int ,int,int) ;
 int sock_net (struct sock*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 int tcp_synq_overflow (struct sock*) ;

__u32 cookie_v6_init_sequence(struct sock *sk, struct sk_buff *skb, __u16 *mssp)
{
 struct ipv6hdr *iph = ipv6_hdr(skb);
 const struct tcphdr *th = tcp_hdr(skb);
 int mssind;
 const __u16 mss = *mssp;

 tcp_synq_overflow(sk);

 for (mssind = 0; mss > msstab[mssind + 1]; mssind++)
  ;
 *mssp = msstab[mssind] + 1;

 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_SYNCOOKIESSENT);

 return secure_tcp_syn_cookie(&iph->saddr, &iph->daddr, th->source,
         th->dest, ntohl(th->seq),
         jiffies / (HZ * 60), mssind);
}
