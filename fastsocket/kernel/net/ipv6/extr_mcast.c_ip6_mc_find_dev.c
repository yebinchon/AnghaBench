
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dst; } ;
struct rt6_info {TYPE_1__ u; struct net_device* rt6i_dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_dev {int lock; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;


 struct net_device* dev_get_by_index (struct net*,int) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dst_release (int *) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct rt6_info* rt6_lookup (struct net*,struct in6_addr*,int *,int ,int ) ;

__attribute__((used)) static struct inet6_dev *ip6_mc_find_dev(struct net *net,
      struct in6_addr *group,
      int ifindex)
{
 struct net_device *dev = ((void*)0);
 struct inet6_dev *idev = ((void*)0);

 if (ifindex == 0) {
  struct rt6_info *rt;

  rt = rt6_lookup(net, group, ((void*)0), 0, 0);
  if (rt) {
   dev = rt->rt6i_dev;
   dev_hold(dev);
   dst_release(&rt->u.dst);
  }
 } else
  dev = dev_get_by_index(net, ifindex);

 if (!dev)
  goto nodev;
 idev = in6_dev_get(dev);
 if (!idev)
  goto release;
 read_lock_bh(&idev->lock);
 if (idev->dead)
  goto unlock_release;

 return idev;

unlock_release:
 read_unlock_bh(&idev->lock);
 in6_dev_put(idev);
release:
 dev_put(dev);
nodev:
 return ((void*)0);
}
