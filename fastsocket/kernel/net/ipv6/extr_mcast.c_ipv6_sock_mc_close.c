
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {struct ipv6_mc_socklist* ipv6_mc_list; } ;
struct ipv6_mc_socklist {int addr; int ifindex; struct ipv6_mc_socklist* next; } ;
struct inet6_dev {int dummy; } ;


 int __ipv6_dev_mc_dec (struct inet6_dev*,int *) ;
 struct net_device* dev_get_by_index (struct net*,int ) ;
 int dev_put (struct net_device*) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ip6_mc_leave_src (struct sock*,struct ipv6_mc_socklist*,struct inet6_dev*) ;
 int ipv6_sk_mc_lock ;
 int sock_kfree_s (struct sock*,struct ipv6_mc_socklist*,int) ;
 struct net* sock_net (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ipv6_sock_mc_close(struct sock *sk)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct ipv6_mc_socklist *mc_lst;
 struct net *net = sock_net(sk);

 write_lock_bh(&ipv6_sk_mc_lock);
 while ((mc_lst = np->ipv6_mc_list) != ((void*)0)) {
  struct net_device *dev;

  np->ipv6_mc_list = mc_lst->next;
  write_unlock_bh(&ipv6_sk_mc_lock);

  dev = dev_get_by_index(net, mc_lst->ifindex);
  if (dev) {
   struct inet6_dev *idev = in6_dev_get(dev);

   (void) ip6_mc_leave_src(sk, mc_lst, idev);
   if (idev) {
    __ipv6_dev_mc_dec(idev, &mc_lst->addr);
    in6_dev_put(idev);
   }
   dev_put(dev);
  } else
   (void) ip6_mc_leave_src(sk, mc_lst, ((void*)0));

  sock_kfree_s(sk, mc_lst, sizeof(*mc_lst));

  write_lock_bh(&ipv6_sk_mc_lock);
 }
 write_unlock_bh(&ipv6_sk_mc_lock);
}
