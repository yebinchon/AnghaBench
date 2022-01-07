
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_2__ {int frag_off; void* tos; void* ttl; void* daddr; void* saddr; int protocol; } ;
struct ip_tunnel_parm {TYPE_1__ iph; void* o_key; void* i_key; void* o_flags; void* i_flags; int link; } ;


 size_t IFLA_GRE_IFLAGS ;
 size_t IFLA_GRE_IKEY ;
 size_t IFLA_GRE_LINK ;
 size_t IFLA_GRE_LOCAL ;
 size_t IFLA_GRE_OFLAGS ;
 size_t IFLA_GRE_OKEY ;
 size_t IFLA_GRE_PMTUDISC ;
 size_t IFLA_GRE_REMOTE ;
 size_t IFLA_GRE_TOS ;
 size_t IFLA_GRE_TTL ;
 int IPPROTO_GRE ;
 int IP_DF ;
 void* gre_flags_to_tnl_flags (int ) ;
 int htons (int ) ;
 int memset (struct ip_tunnel_parm*,int ,int) ;
 int nla_get_be16 (struct nlattr*) ;
 void* nla_get_be32 (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 void* nla_get_u8 (struct nlattr*) ;

__attribute__((used)) static void ipgre_netlink_parms(struct nlattr *data[], struct nlattr *tb[],
          struct ip_tunnel_parm *parms)
{
 memset(parms, 0, sizeof(*parms));

 parms->iph.protocol = IPPROTO_GRE;

 if (!data)
  return;

 if (data[IFLA_GRE_LINK])
  parms->link = nla_get_u32(data[IFLA_GRE_LINK]);

 if (data[IFLA_GRE_IFLAGS])
  parms->i_flags = gre_flags_to_tnl_flags(nla_get_be16(data[IFLA_GRE_IFLAGS]));

 if (data[IFLA_GRE_OFLAGS])
  parms->o_flags = gre_flags_to_tnl_flags(nla_get_be16(data[IFLA_GRE_OFLAGS]));

 if (data[IFLA_GRE_IKEY])
  parms->i_key = nla_get_be32(data[IFLA_GRE_IKEY]);

 if (data[IFLA_GRE_OKEY])
  parms->o_key = nla_get_be32(data[IFLA_GRE_OKEY]);

 if (data[IFLA_GRE_LOCAL])
  parms->iph.saddr = nla_get_be32(data[IFLA_GRE_LOCAL]);

 if (data[IFLA_GRE_REMOTE])
  parms->iph.daddr = nla_get_be32(data[IFLA_GRE_REMOTE]);

 if (data[IFLA_GRE_TTL])
  parms->iph.ttl = nla_get_u8(data[IFLA_GRE_TTL]);

 if (data[IFLA_GRE_TOS])
  parms->iph.tos = nla_get_u8(data[IFLA_GRE_TOS]);

 if (!data[IFLA_GRE_PMTUDISC] || nla_get_u8(data[IFLA_GRE_PMTUDISC]))
  parms->iph.frag_off = htons(IP_DF);
}
