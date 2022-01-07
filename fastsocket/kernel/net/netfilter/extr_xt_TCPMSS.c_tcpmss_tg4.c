
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {int targinfo; } ;
struct tcphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int ihl; int tot_len; int check; } ;
typedef int __be16 ;


 unsigned int NF_DROP ;
 int PF_INET ;
 unsigned int XT_CONTINUE ;
 int csum_replace2 (int *,int ,int ) ;
 int htons (scalar_t__) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ntohs (int ) ;
 int tcpmss_mangle_packet (struct sk_buff*,int ,int ,int,int) ;
 int tcpmss_reverse_mtu (struct sk_buff*,int ) ;

__attribute__((used)) static unsigned int
tcpmss_tg4(struct sk_buff *skb, const struct xt_target_param *par)
{
 struct iphdr *iph = ip_hdr(skb);
 __be16 newlen;
 int ret;

 ret = tcpmss_mangle_packet(skb, par->targinfo,
       tcpmss_reverse_mtu(skb, PF_INET),
       iph->ihl * 4,
       sizeof(*iph) + sizeof(struct tcphdr));
 if (ret < 0)
  return NF_DROP;
 if (ret > 0) {
  iph = ip_hdr(skb);
  newlen = htons(ntohs(iph->tot_len) + ret);
  csum_replace2(&iph->check, iph->tot_len, newlen);
  iph->tot_len = newlen;
 }
 return XT_CONTINUE;
}
