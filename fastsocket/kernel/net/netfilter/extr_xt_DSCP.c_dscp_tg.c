
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct xt_target_param {struct xt_DSCP_info* targinfo; } ;
struct xt_DSCP_info {int dscp; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int dummy; } ;
typedef int __u8 ;


 unsigned int NF_DROP ;
 unsigned int XT_CONTINUE ;
 scalar_t__ XT_DSCP_MASK ;
 int XT_DSCP_SHIFT ;
 int ip_hdr (struct sk_buff*) ;
 int ipv4_change_dsfield (int ,int ,int) ;
 int ipv4_get_dsfield (int ) ;
 int skb_make_writable (struct sk_buff*,int) ;

__attribute__((used)) static unsigned int
dscp_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct xt_DSCP_info *dinfo = par->targinfo;
 u_int8_t dscp = ipv4_get_dsfield(ip_hdr(skb)) >> XT_DSCP_SHIFT;

 if (dscp != dinfo->dscp) {
  if (!skb_make_writable(skb, sizeof(struct iphdr)))
   return NF_DROP;

  ipv4_change_dsfield(ip_hdr(skb), (__u8)(~XT_DSCP_MASK),
        dinfo->dscp << XT_DSCP_SHIFT);

 }
 return XT_CONTINUE;
}
