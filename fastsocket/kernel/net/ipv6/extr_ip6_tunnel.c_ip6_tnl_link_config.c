
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dst; } ;
struct rt6_info {TYPE_2__ u; TYPE_1__* rt6i_dev; } ;
struct net_device {scalar_t__ mtu; scalar_t__ hard_header_len; int iflink; int flags; int broadcast; int dev_addr; } ;
struct ipv6hdr {int dummy; } ;
struct ip6_tnl_parm {int flags; int flowinfo; int link; int laddr; int raddr; } ;
struct flowi {int fl6_flowlabel; int oif; int fl6_dst; int fl6_src; } ;
struct ip6_tnl {struct flowi fl; struct ip6_tnl_parm parms; struct net_device* dev; } ;
struct in6_addr {int dummy; } ;
struct TYPE_3__ {scalar_t__ mtu; scalar_t__ hard_header_len; } ;


 int IFF_POINTOPOINT ;
 int IP6_TNL_F_CAP_RCV ;
 int IP6_TNL_F_CAP_XMIT ;
 int IP6_TNL_F_USE_ORIG_FLOWLABEL ;
 int IP6_TNL_F_USE_ORIG_TCLASS ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_MULTICAST ;
 int IPV6_FLOWLABEL_MASK ;
 scalar_t__ IPV6_MIN_MTU ;
 int IPV6_TCLASS_MASK ;
 int dev_net (struct net_device*) ;
 int dst_release (int *) ;
 int ip6_tnl_set_cap (struct ip6_tnl*) ;
 int ipv6_addr_copy (int *,int *) ;
 int ipv6_addr_type (int *) ;
 int memcpy (int ,int *,int) ;
 struct rt6_info* rt6_lookup (int ,int *,int *,int ,int) ;

__attribute__((used)) static void ip6_tnl_link_config(struct ip6_tnl *t)
{
 struct net_device *dev = t->dev;
 struct ip6_tnl_parm *p = &t->parms;
 struct flowi *fl = &t->fl;

 memcpy(dev->dev_addr, &p->laddr, sizeof(struct in6_addr));
 memcpy(dev->broadcast, &p->raddr, sizeof(struct in6_addr));


 ipv6_addr_copy(&fl->fl6_src, &p->laddr);
 ipv6_addr_copy(&fl->fl6_dst, &p->raddr);
 fl->oif = p->link;
 fl->fl6_flowlabel = 0;

 if (!(p->flags&IP6_TNL_F_USE_ORIG_TCLASS))
  fl->fl6_flowlabel |= IPV6_TCLASS_MASK & p->flowinfo;
 if (!(p->flags&IP6_TNL_F_USE_ORIG_FLOWLABEL))
  fl->fl6_flowlabel |= IPV6_FLOWLABEL_MASK & p->flowinfo;

 ip6_tnl_set_cap(t);

 if (p->flags&IP6_TNL_F_CAP_XMIT && p->flags&IP6_TNL_F_CAP_RCV)
  dev->flags |= IFF_POINTOPOINT;
 else
  dev->flags &= ~IFF_POINTOPOINT;

 dev->iflink = p->link;

 if (p->flags & IP6_TNL_F_CAP_XMIT) {
  int strict = (ipv6_addr_type(&p->raddr) &
         (IPV6_ADDR_MULTICAST|IPV6_ADDR_LINKLOCAL));

  struct rt6_info *rt = rt6_lookup(dev_net(dev),
       &p->raddr, &p->laddr,
       p->link, strict);

  if (rt == ((void*)0))
   return;

  if (rt->rt6i_dev) {
   dev->hard_header_len = rt->rt6i_dev->hard_header_len +
    sizeof (struct ipv6hdr);

   dev->mtu = rt->rt6i_dev->mtu - sizeof (struct ipv6hdr);

   if (dev->mtu < IPV6_MIN_MTU)
    dev->mtu = IPV6_MIN_MTU;
  }
  dst_release(&rt->u.dst);
 }
}
