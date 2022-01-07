
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_target_param {struct ipt_ECN_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct ipt_ECN_info {int operation; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;


 scalar_t__ IPPROTO_TCP ;
 int IPT_ECN_OP_SET_CWR ;
 int IPT_ECN_OP_SET_ECE ;
 int IPT_ECN_OP_SET_IP ;
 unsigned int NF_DROP ;
 unsigned int XT_CONTINUE ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int set_ect_ip (struct sk_buff*,struct ipt_ECN_info const*) ;
 int set_ect_tcp (struct sk_buff*,struct ipt_ECN_info const*) ;

__attribute__((used)) static unsigned int
ecn_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct ipt_ECN_info *einfo = par->targinfo;

 if (einfo->operation & IPT_ECN_OP_SET_IP)
  if (!set_ect_ip(skb, einfo))
   return NF_DROP;

 if (einfo->operation & (IPT_ECN_OP_SET_ECE | IPT_ECN_OP_SET_CWR)
     && ip_hdr(skb)->protocol == IPPROTO_TCP)
  if (!set_ect_tcp(skb, einfo))
   return NF_DROP;

 return XT_CONTINUE;
}
