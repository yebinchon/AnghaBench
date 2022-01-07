
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct xt_target_param {struct xt_DSCP_info* targinfo; } ;
struct xt_DSCP_info {int dscp; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
typedef int __u8 ;


 unsigned int NF_DROP ;
 unsigned int XT_CONTINUE ;
 scalar_t__ XT_DSCP_MASK ;
 int XT_DSCP_SHIFT ;
 int ipv6_change_dsfield (int ,int ,int) ;
 int ipv6_get_dsfield (int ) ;
 int ipv6_hdr (struct sk_buff*) ;
 int skb_make_writable (struct sk_buff*,int) ;

__attribute__((used)) static unsigned int
dscp_tg6(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct xt_DSCP_info *dinfo = par->targinfo;
 u_int8_t dscp = ipv6_get_dsfield(ipv6_hdr(skb)) >> XT_DSCP_SHIFT;

 if (dscp != dinfo->dscp) {
  if (!skb_make_writable(skb, sizeof(struct ipv6hdr)))
   return NF_DROP;

  ipv6_change_dsfield(ipv6_hdr(skb), (__u8)(~XT_DSCP_MASK),
        dinfo->dscp << XT_DSCP_SHIFT);
 }
 return XT_CONTINUE;
}
