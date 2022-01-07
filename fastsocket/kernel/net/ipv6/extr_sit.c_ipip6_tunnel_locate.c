
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sit_net {int dummy; } ;
struct net_device {int priv_flags; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ daddr; scalar_t__ saddr; } ;
struct ip_tunnel_parm {scalar_t__ link; int i_flags; scalar_t__* name; TYPE_1__ iph; } ;
struct ip_tunnel {struct ip_tunnel_parm parms; struct ip_tunnel* next; } ;
typedef scalar_t__ __be32 ;


 int IFF_ISATAP ;
 int IFNAMSIZ ;
 int SIT_ISATAP ;
 struct ip_tunnel** __ipip6_bucket (struct sit_net*,struct ip_tunnel_parm*) ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 scalar_t__ dev_alloc_name (struct net_device*,char*) ;
 int dev_hold (struct net_device*) ;
 int dev_net_set (struct net_device*,struct net*) ;
 int free_netdev (struct net_device*) ;
 int ipip6_tunnel_init (struct net_device*) ;
 int ipip6_tunnel_link (struct sit_net*,struct ip_tunnel*) ;
 int ipip6_tunnel_setup ;
 struct sit_net* net_generic (struct net*,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 scalar_t__ register_netdevice (struct net_device*) ;
 int sit_net_id ;
 int sprintf (char*,char*) ;
 scalar_t__ strchr (char*,char) ;
 int strlcpy (char*,scalar_t__*,int) ;

__attribute__((used)) static struct ip_tunnel * ipip6_tunnel_locate(struct net *net,
  struct ip_tunnel_parm *parms, int create)
{
 __be32 remote = parms->iph.daddr;
 __be32 local = parms->iph.saddr;
 struct ip_tunnel *t, **tp, *nt;
 struct net_device *dev;
 char name[IFNAMSIZ];
 struct sit_net *sitn = net_generic(net, sit_net_id);

 for (tp = __ipip6_bucket(sitn, parms); (t = *tp) != ((void*)0); tp = &t->next) {
  if (local == t->parms.iph.saddr &&
      remote == t->parms.iph.daddr &&
      parms->link == t->parms.link) {
   if (create)
    return ((void*)0);
   else
    return t;
  }
 }
 if (!create)
  goto failed;

 if (parms->name[0])
  strlcpy(name, parms->name, IFNAMSIZ);
 else
  sprintf(name, "sit%%d");

 dev = alloc_netdev(sizeof(*t), name, ipip6_tunnel_setup);
 if (dev == ((void*)0))
  return ((void*)0);

 dev_net_set(dev, net);

 if (strchr(name, '%')) {
  if (dev_alloc_name(dev, name) < 0)
   goto failed_free;
 }

 nt = netdev_priv(dev);

 nt->parms = *parms;
 ipip6_tunnel_init(dev);

 if (parms->i_flags & SIT_ISATAP)
  dev->priv_flags |= IFF_ISATAP;

 if (register_netdevice(dev) < 0)
  goto failed_free;

 dev_hold(dev);

 ipip6_tunnel_link(sitn, nt);
 return nt;

failed_free:
 free_netdev(dev);
failed:
 return ((void*)0);
}
