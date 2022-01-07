
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {int hooknum; struct ipt_reject_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct ipt_reject_info {int with; } ;


 int ICMP_HOST_ANO ;
 int ICMP_HOST_UNREACH ;
 int ICMP_NET_ANO ;
 int ICMP_NET_UNREACH ;
 int ICMP_PKT_FILTERED ;
 int ICMP_PORT_UNREACH ;
 int ICMP_PROT_UNREACH ;
 unsigned int NF_DROP ;
 int send_reset (struct sk_buff*,int ) ;
 int send_unreach (struct sk_buff*,int ) ;

__attribute__((used)) static unsigned int
reject_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct ipt_reject_info *reject = par->targinfo;




 switch (reject->with) {
 case 131:
  send_unreach(skb, ICMP_NET_UNREACH);
  break;
 case 133:
  send_unreach(skb, ICMP_HOST_UNREACH);
  break;
 case 129:
  send_unreach(skb, ICMP_PROT_UNREACH);
  break;
 case 130:
  send_unreach(skb, ICMP_PORT_UNREACH);
  break;
 case 132:
  send_unreach(skb, ICMP_NET_ANO);
  break;
 case 134:
  send_unreach(skb, ICMP_HOST_ANO);
  break;
 case 136:
  send_unreach(skb, ICMP_PKT_FILTERED);
  break;
 case 128:
  send_reset(skb, par->hooknum);
 case 135:

  break;
 }

 return NF_DROP;
}
