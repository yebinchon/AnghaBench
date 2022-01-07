
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_7__ {int dst; } ;
struct rt6_info {TYPE_3__ u; struct net_device* rt6i_dev; } ;
struct net_device {int ifindex; } ;
struct TYPE_6__ {TYPE_1__* devconf_all; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6_pinfo {struct ipv6_ac_socklist* ipv6_ac_list; } ;
struct ipv6_ac_socklist {struct ipv6_ac_socklist* acl_next; int acl_ifindex; int acl_addr; } ;
struct TYPE_8__ {int forwarding; } ;
struct inet6_dev {TYPE_4__ cnf; } ;
struct in6_addr {int dummy; } ;
struct TYPE_5__ {int forwarding; } ;


 int CAP_NET_ADMIN ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int IFF_LOOPBACK ;
 int IFF_UP ;
 int capable (int ) ;
 struct net_device* dev_get_by_flags (struct net*,int,int) ;
 struct net_device* dev_get_by_index (struct net*,int) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dst_release (int *) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ipv6_addr_copy (int *,struct in6_addr*) ;
 scalar_t__ ipv6_addr_is_multicast (struct in6_addr*) ;
 scalar_t__ ipv6_chk_addr (struct net*,struct in6_addr*,int *,int ) ;
 int ipv6_chk_prefix (struct in6_addr*,struct net_device*) ;
 int ipv6_dev_ac_inc (struct net_device*,struct in6_addr*) ;
 int ipv6_sk_ac_lock ;
 struct rt6_info* rt6_lookup (struct net*,struct in6_addr*,int *,int ,int ) ;
 int sock_kfree_s (struct sock*,struct ipv6_ac_socklist*,int) ;
 struct ipv6_ac_socklist* sock_kmalloc (struct sock*,int,int ) ;
 struct net* sock_net (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int ipv6_sock_ac_join(struct sock *sk, int ifindex, struct in6_addr *addr)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct net_device *dev = ((void*)0);
 struct inet6_dev *idev;
 struct ipv6_ac_socklist *pac;
 struct net *net = sock_net(sk);
 int ishost = !net->ipv6.devconf_all->forwarding;
 int err = 0;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;
 if (ipv6_addr_is_multicast(addr))
  return -EINVAL;
 if (ipv6_chk_addr(net, addr, ((void*)0), 0))
  return -EINVAL;

 pac = sock_kmalloc(sk, sizeof(struct ipv6_ac_socklist), GFP_KERNEL);
 if (pac == ((void*)0))
  return -ENOMEM;
 pac->acl_next = ((void*)0);
 ipv6_addr_copy(&pac->acl_addr, addr);

 if (ifindex == 0) {
  struct rt6_info *rt;

  rt = rt6_lookup(net, addr, ((void*)0), 0, 0);
  if (rt) {
   dev = rt->rt6i_dev;
   dev_hold(dev);
   dst_release(&rt->u.dst);
  } else if (ishost) {
   err = -EADDRNOTAVAIL;
   goto out_free_pac;
  } else {


   dev = dev_get_by_flags(net, IFF_UP, IFF_UP|IFF_LOOPBACK);
  }
 } else
  dev = dev_get_by_index(net, ifindex);

 if (dev == ((void*)0)) {
  err = -ENODEV;
  goto out_free_pac;
 }

 idev = in6_dev_get(dev);
 if (!idev) {
  if (ifindex)
   err = -ENODEV;
  else
   err = -EADDRNOTAVAIL;
  goto out_dev_put;
 }

 ishost = !idev->cnf.forwarding;
 in6_dev_put(idev);

 pac->acl_ifindex = dev->ifindex;






 if (!ipv6_chk_prefix(addr, dev)) {
  if (ishost)
   err = -EADDRNOTAVAIL;
  if (err)
   goto out_dev_put;
 }

 err = ipv6_dev_ac_inc(dev, addr);
 if (err)
  goto out_dev_put;

 write_lock_bh(&ipv6_sk_ac_lock);
 pac->acl_next = np->ipv6_ac_list;
 np->ipv6_ac_list = pac;
 write_unlock_bh(&ipv6_sk_ac_lock);

 dev_put(dev);

 return 0;

out_dev_put:
 dev_put(dev);
out_free_pac:
 sock_kfree_s(sk, pac, sizeof(*pac));
 return err;
}
