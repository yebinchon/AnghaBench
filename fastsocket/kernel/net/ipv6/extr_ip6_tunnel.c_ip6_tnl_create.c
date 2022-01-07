
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip6_tnl_parm {scalar_t__* name; } ;
struct ip6_tnl_net {int dummy; } ;
struct ip6_tnl {struct ip6_tnl_parm parms; } ;


 int IFNAMSIZ ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 scalar_t__ dev_alloc_name (struct net_device*,char*) ;
 int dev_hold (struct net_device*) ;
 int dev_net_set (struct net_device*,struct net*) ;
 int free_netdev (struct net_device*) ;
 int ip6_tnl_dev_init (struct net_device*) ;
 int ip6_tnl_dev_setup ;
 int ip6_tnl_link (struct ip6_tnl_net*,struct ip6_tnl*) ;
 int ip6_tnl_net_id ;
 struct ip6_tnl_net* net_generic (struct net*,int ) ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;
 int register_netdevice (struct net_device*) ;
 int sprintf (char*,char*) ;
 scalar_t__ strchr (char*,char) ;
 int strlcpy (char*,scalar_t__*,int) ;

__attribute__((used)) static struct ip6_tnl *ip6_tnl_create(struct net *net, struct ip6_tnl_parm *p)
{
 struct net_device *dev;
 struct ip6_tnl *t;
 char name[IFNAMSIZ];
 int err;
 struct ip6_tnl_net *ip6n = net_generic(net, ip6_tnl_net_id);

 if (p->name[0])
  strlcpy(name, p->name, IFNAMSIZ);
 else
  sprintf(name, "ip6tnl%%d");

 dev = alloc_netdev(sizeof (*t), name, ip6_tnl_dev_setup);
 if (dev == ((void*)0))
  goto failed;

 dev_net_set(dev, net);

 if (strchr(name, '%')) {
  if (dev_alloc_name(dev, name) < 0)
   goto failed_free;
 }

 t = netdev_priv(dev);
 t->parms = *p;
 ip6_tnl_dev_init(dev);

 if ((err = register_netdevice(dev)) < 0)
  goto failed_free;

 dev_hold(dev);
 ip6_tnl_link(ip6n, t);
 return t;

failed_free:
 free_netdev(dev);
failed:
 return ((void*)0);
}
