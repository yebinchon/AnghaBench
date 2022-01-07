
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip6_tnl_parm {int flags; int raddr; int laddr; scalar_t__ link; } ;
struct ip6_tnl {int dev; struct ip6_tnl_parm parms; } ;


 int IP6_TNL_F_CAP_RCV ;
 struct net_device* dev_get_by_index (struct net*,scalar_t__) ;
 struct net* dev_net (int ) ;
 int dev_put (struct net_device*) ;
 scalar_t__ ipv6_addr_is_multicast (int *) ;
 int ipv6_chk_addr (struct net*,int *,struct net_device*,int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline int ip6_tnl_rcv_ctl(struct ip6_tnl *t)
{
 struct ip6_tnl_parm *p = &t->parms;
 int ret = 0;
 struct net *net = dev_net(t->dev);

 if (p->flags & IP6_TNL_F_CAP_RCV) {
  struct net_device *ldev = ((void*)0);

  if (p->link)
   ldev = dev_get_by_index(net, p->link);

  if ((ipv6_addr_is_multicast(&p->laddr) ||
       likely(ipv6_chk_addr(net, &p->laddr, ldev, 0))) &&
      likely(!ipv6_chk_addr(net, &p->raddr, ((void*)0), 0)))
   ret = 1;

  if (ldev)
   dev_put(ldev);
 }
 return ret;
}
