
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int dst; } ;
struct rt6_info {TYPE_1__ u; struct net_device* rt6i_dev; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {struct ipv6_mc_socklist* ipv6_mc_list; } ;
struct ipv6_mc_socklist {int ifindex; struct ipv6_mc_socklist* next; int * sflist; int sflock; int sfmode; int addr; } ;
struct in6_addr {int dummy; } ;


 int EADDRINUSE ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MCAST_EXCLUDE ;
 struct net_device* dev_get_by_index (struct net*,int) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dst_release (int *) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ipv6_addr_copy (int *,struct in6_addr const*) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr const*) ;
 int ipv6_addr_is_multicast (struct in6_addr const*) ;
 int ipv6_dev_mc_inc (struct net_device*,struct in6_addr const*) ;
 int ipv6_sk_mc_lock ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct rt6_info* rt6_lookup (struct net*,struct in6_addr const*,int *,int ,int ) ;
 int rwlock_init (int *) ;
 int sock_kfree_s (struct sock*,struct ipv6_mc_socklist*,int) ;
 struct ipv6_mc_socklist* sock_kmalloc (struct sock*,int,int ) ;
 struct net* sock_net (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int ipv6_sock_mc_join(struct sock *sk, int ifindex, const struct in6_addr *addr)
{
 struct net_device *dev = ((void*)0);
 struct ipv6_mc_socklist *mc_lst;
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct net *net = sock_net(sk);
 int err;

 if (!ipv6_addr_is_multicast(addr))
  return -EINVAL;

 read_lock_bh(&ipv6_sk_mc_lock);
 for (mc_lst=np->ipv6_mc_list; mc_lst; mc_lst=mc_lst->next) {
  if ((ifindex == 0 || mc_lst->ifindex == ifindex) &&
      ipv6_addr_equal(&mc_lst->addr, addr)) {
   read_unlock_bh(&ipv6_sk_mc_lock);
   return -EADDRINUSE;
  }
 }
 read_unlock_bh(&ipv6_sk_mc_lock);

 mc_lst = sock_kmalloc(sk, sizeof(struct ipv6_mc_socklist), GFP_KERNEL);

 if (mc_lst == ((void*)0))
  return -ENOMEM;

 mc_lst->next = ((void*)0);
 ipv6_addr_copy(&mc_lst->addr, addr);

 if (ifindex == 0) {
  struct rt6_info *rt;
  rt = rt6_lookup(net, addr, ((void*)0), 0, 0);
  if (rt) {
   dev = rt->rt6i_dev;
   dev_hold(dev);
   dst_release(&rt->u.dst);
  }
 } else
  dev = dev_get_by_index(net, ifindex);

 if (dev == ((void*)0)) {
  sock_kfree_s(sk, mc_lst, sizeof(*mc_lst));
  return -ENODEV;
 }

 mc_lst->ifindex = dev->ifindex;
 mc_lst->sfmode = MCAST_EXCLUDE;
 rwlock_init(&mc_lst->sflock);
 mc_lst->sflist = ((void*)0);





 err = ipv6_dev_mc_inc(dev, addr);

 if (err) {
  sock_kfree_s(sk, mc_lst, sizeof(*mc_lst));
  dev_put(dev);
  return err;
 }

 write_lock_bh(&ipv6_sk_mc_lock);
 mc_lst->next = np->ipv6_mc_list;
 np->ipv6_mc_list = mc_lst;
 write_unlock_bh(&ipv6_sk_mc_lock);

 dev_put(dev);

 return 0;
}
