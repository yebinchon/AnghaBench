
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ttl; int tos; int frag_off; int daddr; int saddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; int o_key; int i_key; int o_flags; int i_flags; int link; } ;
struct ip_tunnel {struct ip_tunnel_parm parms; } ;


 int EMSGSIZE ;
 int IFLA_GRE_IFLAGS ;
 int IFLA_GRE_IKEY ;
 int IFLA_GRE_LINK ;
 int IFLA_GRE_LOCAL ;
 int IFLA_GRE_OFLAGS ;
 int IFLA_GRE_OKEY ;
 int IFLA_GRE_PMTUDISC ;
 int IFLA_GRE_REMOTE ;
 int IFLA_GRE_TOS ;
 int IFLA_GRE_TTL ;
 int IP_DF ;
 int htons (int ) ;
 struct ip_tunnel* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;
 int tnl_flags_to_gre_flags (int ) ;

__attribute__((used)) static int ipgre_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct ip_tunnel *t = netdev_priv(dev);
 struct ip_tunnel_parm *p = &t->parms;

 if (nla_put_u32(skb, IFLA_GRE_LINK, p->link) ||
     nla_put_be16(skb, IFLA_GRE_IFLAGS, tnl_flags_to_gre_flags(p->i_flags)) ||
     nla_put_be16(skb, IFLA_GRE_OFLAGS, tnl_flags_to_gre_flags(p->o_flags)) ||
     nla_put_be32(skb, IFLA_GRE_IKEY, p->i_key) ||
     nla_put_be32(skb, IFLA_GRE_OKEY, p->o_key) ||
     nla_put_be32(skb, IFLA_GRE_LOCAL, p->iph.saddr) ||
     nla_put_be32(skb, IFLA_GRE_REMOTE, p->iph.daddr) ||
     nla_put_u8(skb, IFLA_GRE_TTL, p->iph.ttl) ||
     nla_put_u8(skb, IFLA_GRE_TOS, p->iph.tos) ||
     nla_put_u8(skb, IFLA_GRE_PMTUDISC,
         !!(p->iph.frag_off & htons(IP_DF))))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
