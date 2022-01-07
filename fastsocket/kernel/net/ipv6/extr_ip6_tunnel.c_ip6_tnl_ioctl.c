
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip6_tnl_parm {int proto; } ;
struct ip6_tnl_net {struct net_device* fb_tnl_dev; } ;
struct ip6_tnl {struct net_device* dev; struct ip6_tnl_parm parms; } ;
struct TYPE_2__ {int ifru_data; } ;
struct ifreq {TYPE_1__ ifr_ifru; } ;
typedef int p ;


 int CAP_NET_ADMIN ;
 int EEXIST ;
 int EFAULT ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOENT ;
 int EPERM ;
 int IPPROTO_IPIP ;
 int IPPROTO_IPV6 ;




 int capable (int ) ;
 int copy_from_user (struct ip6_tnl_parm*,int ,int) ;
 int copy_to_user (int ,struct ip6_tnl_parm*,int) ;
 struct net* dev_net (struct net_device*) ;
 int ip6_tnl_change (struct ip6_tnl*,struct ip6_tnl_parm*) ;
 int ip6_tnl_link (struct ip6_tnl_net*,struct ip6_tnl*) ;
 struct ip6_tnl* ip6_tnl_locate (struct net*,struct ip6_tnl_parm*,int) ;
 int ip6_tnl_net_id ;
 int ip6_tnl_unlink (struct ip6_tnl_net*,struct ip6_tnl*) ;
 int memcpy (struct ip6_tnl_parm*,struct ip6_tnl_parm*,int) ;
 struct ip6_tnl_net* net_generic (struct net*,int ) ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;
 int netdev_state_change (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static int
ip6_tnl_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 int err = 0;
 struct ip6_tnl_parm p;
 struct ip6_tnl *t = ((void*)0);
 struct net *net = dev_net(dev);
 struct ip6_tnl_net *ip6n = net_generic(net, ip6_tnl_net_id);

 switch (cmd) {
 case 128:
  if (dev == ip6n->fb_tnl_dev) {
   if (copy_from_user(&p, ifr->ifr_ifru.ifru_data, sizeof (p))) {
    err = -EFAULT;
    break;
   }
   t = ip6_tnl_locate(net, &p, 0);
  }
  if (t == ((void*)0))
   t = netdev_priv(dev);
  memcpy(&p, &t->parms, sizeof (p));
  if (copy_to_user(ifr->ifr_ifru.ifru_data, &p, sizeof (p))) {
   err = -EFAULT;
  }
  break;
 case 131:
 case 130:
  err = -EPERM;
  if (!capable(CAP_NET_ADMIN))
   break;
  err = -EFAULT;
  if (copy_from_user(&p, ifr->ifr_ifru.ifru_data, sizeof (p)))
   break;
  err = -EINVAL;
  if (p.proto != IPPROTO_IPV6 && p.proto != IPPROTO_IPIP &&
      p.proto != 0)
   break;
  t = ip6_tnl_locate(net, &p, cmd == 131);
  if (dev != ip6n->fb_tnl_dev && cmd == 130) {
   if (t != ((void*)0)) {
    if (t->dev != dev) {
     err = -EEXIST;
     break;
    }
   } else
    t = netdev_priv(dev);

   ip6_tnl_unlink(ip6n, t);
   err = ip6_tnl_change(t, &p);
   ip6_tnl_link(ip6n, t);
   netdev_state_change(dev);
  }
  if (t) {
   err = 0;
   if (copy_to_user(ifr->ifr_ifru.ifru_data, &t->parms, sizeof (p)))
    err = -EFAULT;

  } else
   err = (cmd == 131 ? -ENOBUFS : -ENOENT);
  break;
 case 129:
  err = -EPERM;
  if (!capable(CAP_NET_ADMIN))
   break;

  if (dev == ip6n->fb_tnl_dev) {
   err = -EFAULT;
   if (copy_from_user(&p, ifr->ifr_ifru.ifru_data, sizeof (p)))
    break;
   err = -ENOENT;
   if ((t = ip6_tnl_locate(net, &p, 0)) == ((void*)0))
    break;
   err = -EPERM;
   if (t->dev == ip6n->fb_tnl_dev)
    break;
   dev = t->dev;
  }
  err = 0;
  unregister_netdevice(dev);
  break;
 default:
  err = -EINVAL;
 }
 return err;
}
