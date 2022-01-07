
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dest; int source; int seq; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int daddr; int saddr; } ;
typedef size_t __u32 ;


 int COUNTER_TRIES ;
 int HZ ;
 size_t NUM_MSS ;
 size_t check_tcp_syn_cookie (size_t,int *,int *,int ,int ,size_t,int,int ) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int jiffies ;
 int* msstab ;
 size_t ntohl (int ) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;

__attribute__((used)) static inline int cookie_check(struct sk_buff *skb, __u32 cookie)
{
 struct ipv6hdr *iph = ipv6_hdr(skb);
 const struct tcphdr *th = tcp_hdr(skb);
 __u32 seq = ntohl(th->seq) - 1;
 __u32 mssind = check_tcp_syn_cookie(cookie, &iph->saddr, &iph->daddr,
         th->source, th->dest, seq,
         jiffies / (HZ * 60), COUNTER_TRIES);

 return mssind < NUM_MSS ? msstab[mssind] + 1 : 0;
}
