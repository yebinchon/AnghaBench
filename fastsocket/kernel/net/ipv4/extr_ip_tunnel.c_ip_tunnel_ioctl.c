
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {unsigned int flags; int type; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int daddr; int frag_off; int ttl; } ;
struct ip_tunnel_parm {int i_flags; int o_flags; TYPE_1__ iph; int o_key; int i_key; } ;
struct ip_tunnel_net {struct net_device* fb_tunnel_dev; } ;
struct ip_tunnel {struct net_device* dev; int parms; int ip_tnl_net_id; } ;


 int BUG_ON (int) ;
 int CAP_NET_ADMIN ;
 int EEXIST ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOENT ;
 int EPERM ;
 unsigned int IFF_BROADCAST ;
 unsigned int IFF_POINTOPOINT ;
 int IP_DF ;




 int TUNNEL_KEY ;
 int capable (int ) ;
 struct net* dev_net (struct net_device*) ;
 int htons (int ) ;
 struct ip_tunnel* ip_tunnel_create (struct net*,struct ip_tunnel_net*,struct ip_tunnel_parm*) ;
 struct ip_tunnel* ip_tunnel_find (struct ip_tunnel_net*,struct ip_tunnel_parm*,int ) ;
 int ip_tunnel_update (struct ip_tunnel_net*,struct ip_tunnel*,struct net_device*,struct ip_tunnel_parm*,int) ;
 int ipv4_is_multicast (int ) ;
 int memcpy (struct ip_tunnel_parm*,int *,int) ;
 struct ip_tunnel_net* net_generic (struct net*,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

int ip_tunnel_ioctl(struct net_device *dev, struct ip_tunnel_parm *p, int cmd)
{
 int err = 0;
 struct ip_tunnel *t;
 struct net *net = dev_net(dev);
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct ip_tunnel_net *itn = net_generic(net, tunnel->ip_tnl_net_id);

 BUG_ON(!itn->fb_tunnel_dev);
 switch (cmd) {
 case 128:
  t = ((void*)0);
  if (dev == itn->fb_tunnel_dev)
   t = ip_tunnel_find(itn, p, itn->fb_tunnel_dev->type);
  if (t == ((void*)0))
   t = netdev_priv(dev);
  memcpy(p, &t->parms, sizeof(*p));
  break;

 case 131:
 case 130:
  err = -EPERM;
  if (!capable(CAP_NET_ADMIN))
   goto done;
  if (p->iph.ttl)
   p->iph.frag_off |= htons(IP_DF);
  if (!(p->i_flags&TUNNEL_KEY))
   p->i_key = 0;
  if (!(p->o_flags&TUNNEL_KEY))
   p->o_key = 0;

  t = ip_tunnel_find(itn, p, itn->fb_tunnel_dev->type);

  if (!t && (cmd == 131))
   t = ip_tunnel_create(net, itn, p);

  if (dev != itn->fb_tunnel_dev && cmd == 130) {
   if (t != ((void*)0)) {
    if (t->dev != dev) {
     err = -EEXIST;
     break;
    }
   } else {
    unsigned int nflags = 0;

    if (ipv4_is_multicast(p->iph.daddr))
     nflags = IFF_BROADCAST;
    else if (p->iph.daddr)
     nflags = IFF_POINTOPOINT;

    if ((dev->flags^nflags)&(IFF_POINTOPOINT|IFF_BROADCAST)) {
     err = -EINVAL;
     break;
    }

    t = netdev_priv(dev);
   }
  }

  if (t) {
   err = 0;
   ip_tunnel_update(itn, t, dev, p, 1);
  } else
   err = (cmd == 131 ? -ENOBUFS : -ENOENT);
  break;

 case 129:
  err = -EPERM;
  if (!capable(CAP_NET_ADMIN))
   goto done;

  if (dev == itn->fb_tunnel_dev) {
   err = -ENOENT;
   t = ip_tunnel_find(itn, p, itn->fb_tunnel_dev->type);
   if (t == ((void*)0))
    goto done;
   err = -EPERM;
   if (t == netdev_priv(itn->fb_tunnel_dev))
    goto done;
   dev = t->dev;
  }
  unregister_netdevice(dev);
  err = 0;
  break;

 default:
  err = -EINVAL;
 }

done:
 return err;
}
