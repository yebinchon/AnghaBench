
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int maxvif; int mroute_reg_vif_num; struct mif_device* vif6_table; } ;
struct net {TYPE_1__ ipv6; } ;
struct mif_device {int flags; struct net_device* dev; } ;
struct TYPE_4__ {int mc_forwarding; } ;
struct inet6_dev {TYPE_2__ cnf; } ;


 int EADDRNOTAVAIL ;
 int MIFF_REGISTER ;
 scalar_t__ MIF_EXISTS (struct net*,int) ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int mrt_lock ;
 int unregister_netdevice (struct net_device*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int mif6_delete(struct net *net, int vifi)
{
 struct mif_device *v;
 struct net_device *dev;
 struct inet6_dev *in6_dev;
 if (vifi < 0 || vifi >= net->ipv6.maxvif)
  return -EADDRNOTAVAIL;

 v = &net->ipv6.vif6_table[vifi];

 write_lock_bh(&mrt_lock);
 dev = v->dev;
 v->dev = ((void*)0);

 if (!dev) {
  write_unlock_bh(&mrt_lock);
  return -EADDRNOTAVAIL;
 }






 if (vifi + 1 == net->ipv6.maxvif) {
  int tmp;
  for (tmp = vifi - 1; tmp >= 0; tmp--) {
   if (MIF_EXISTS(net, tmp))
    break;
  }
  net->ipv6.maxvif = tmp + 1;
 }

 write_unlock_bh(&mrt_lock);

 dev_set_allmulti(dev, -1);

 in6_dev = __in6_dev_get(dev);
 if (in6_dev)
  in6_dev->cnf.mc_forwarding--;

 if (v->flags & MIFF_REGISTER)
  unregister_netdevice(dev);

 dev_put(dev);
 return 0;
}
