
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int ndisc_nodetype; } ;
struct iphdr {scalar_t__ saddr; } ;
struct ip_tunnel_prl_entry {int flags; } ;
struct ip_tunnel {int dev; } ;
struct in6_addr {scalar_t__* s6_addr32; } ;
struct TYPE_2__ {struct in6_addr saddr; } ;


 int NDISC_NODETYPE_DEFAULT ;
 int NDISC_NODETYPE_HOST ;
 int NDISC_NODETYPE_NODEFAULT ;
 int PRL_DEFAULT ;
 struct ip_tunnel_prl_entry* __ipip6_tunnel_locate_prl (struct ip_tunnel*,scalar_t__) ;
 int ipip6_lock ;
 scalar_t__ ipv6_addr_is_isatap (struct in6_addr*) ;
 scalar_t__ ipv6_chk_prefix (struct in6_addr*,int ) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int
isatap_chksrc(struct sk_buff *skb, struct iphdr *iph, struct ip_tunnel *t)
{
 struct ip_tunnel_prl_entry *p;
 int ok = 1;

 read_lock(&ipip6_lock);
 p = __ipip6_tunnel_locate_prl(t, iph->saddr);
 if (p) {
  if (p->flags & PRL_DEFAULT)
   skb->ndisc_nodetype = NDISC_NODETYPE_DEFAULT;
  else
   skb->ndisc_nodetype = NDISC_NODETYPE_NODEFAULT;
 } else {
  struct in6_addr *addr6 = &ipv6_hdr(skb)->saddr;
  if (ipv6_addr_is_isatap(addr6) &&
      (addr6->s6_addr32[3] == iph->saddr) &&
      ipv6_chk_prefix(addr6, t->dev))
   skb->ndisc_nodetype = NDISC_NODETYPE_HOST;
  else
   ok = 0;
 }
 read_unlock(&ipip6_lock);
 return ok;
}
