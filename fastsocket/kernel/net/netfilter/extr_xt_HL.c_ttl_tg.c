
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {struct ipt_TTL_info* targinfo; } ;
struct sk_buff {int len; } ;
struct ipt_TTL_info {int mode; int ttl; } ;
struct iphdr {int ttl; int check; } ;





 unsigned int NF_DROP ;
 unsigned int XT_CONTINUE ;
 int csum_replace2 (int *,int ,int ) ;
 int htons (int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int skb_make_writable (struct sk_buff*,int ) ;

__attribute__((used)) static unsigned int
ttl_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 struct iphdr *iph;
 const struct ipt_TTL_info *info = par->targinfo;
 int new_ttl;

 if (!skb_make_writable(skb, skb->len))
  return NF_DROP;

 iph = ip_hdr(skb);

 switch (info->mode) {
  case 128:
   new_ttl = info->ttl;
   break;
  case 129:
   new_ttl = iph->ttl + info->ttl;
   if (new_ttl > 255)
    new_ttl = 255;
   break;
  case 130:
   new_ttl = iph->ttl - info->ttl;
   if (new_ttl < 0)
    new_ttl = 0;
   break;
  default:
   new_ttl = iph->ttl;
   break;
 }

 if (new_ttl != iph->ttl) {
  csum_replace2(&iph->check, htons(iph->ttl << 8),
        htons(new_ttl << 8));
  iph->ttl = new_ttl;
 }

 return XT_CONTINUE;
}
