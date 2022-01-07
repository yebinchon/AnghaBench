
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {int targinfo; } ;
struct tcphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int dummy; } ;


 int ip_hdrlen (struct sk_buff*) ;
 unsigned int tcpoptstrip_mangle_packet (struct sk_buff*,int ,int ,int) ;

__attribute__((used)) static unsigned int
tcpoptstrip_tg4(struct sk_buff *skb, const struct xt_target_param *par)
{
 return tcpoptstrip_mangle_packet(skb, par->targinfo, ip_hdrlen(skb),
        sizeof(struct iphdr) + sizeof(struct tcphdr));
}
