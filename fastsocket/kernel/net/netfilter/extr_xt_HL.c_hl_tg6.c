
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {struct ip6t_HL_info* targinfo; } ;
struct sk_buff {int len; } ;
struct ipv6hdr {int hop_limit; } ;
struct ip6t_HL_info {int mode; int hop_limit; } ;





 unsigned int NF_DROP ;
 unsigned int XT_CONTINUE ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int skb_make_writable (struct sk_buff*,int ) ;

__attribute__((used)) static unsigned int
hl_tg6(struct sk_buff *skb, const struct xt_target_param *par)
{
 struct ipv6hdr *ip6h;
 const struct ip6t_HL_info *info = par->targinfo;
 int new_hl;

 if (!skb_make_writable(skb, skb->len))
  return NF_DROP;

 ip6h = ipv6_hdr(skb);

 switch (info->mode) {
  case 128:
   new_hl = info->hop_limit;
   break;
  case 129:
   new_hl = ip6h->hop_limit + info->hop_limit;
   if (new_hl > 255)
    new_hl = 255;
   break;
  case 130:
   new_hl = ip6h->hop_limit - info->hop_limit;
   if (new_hl < 0)
    new_hl = 0;
   break;
  default:
   new_hl = ip6h->hop_limit;
   break;
 }

 ip6h->hop_limit = new_hl;

 return XT_CONTINUE;
}
