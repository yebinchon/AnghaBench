
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {struct ipv6_ac_socklist* ipv6_ac_list; } ;
struct ipv6_ac_socklist {int acl_ifindex; int acl_addr; struct ipv6_ac_socklist* acl_next; } ;


 struct net_device* dev_get_by_index (struct net*,int) ;
 int dev_put (struct net_device*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ipv6_dev_ac_dec (struct net_device*,int *) ;
 int ipv6_sk_ac_lock ;
 int sock_kfree_s (struct sock*,struct ipv6_ac_socklist*,int) ;
 struct net* sock_net (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ipv6_sock_ac_close(struct sock *sk)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct net_device *dev = ((void*)0);
 struct ipv6_ac_socklist *pac;
 struct net *net = sock_net(sk);
 int prev_index;

 write_lock_bh(&ipv6_sk_ac_lock);
 pac = np->ipv6_ac_list;
 np->ipv6_ac_list = ((void*)0);
 write_unlock_bh(&ipv6_sk_ac_lock);

 prev_index = 0;
 while (pac) {
  struct ipv6_ac_socklist *next = pac->acl_next;

  if (pac->acl_ifindex != prev_index) {
   if (dev)
    dev_put(dev);
   dev = dev_get_by_index(net, pac->acl_ifindex);
   prev_index = pac->acl_ifindex;
  }
  if (dev)
   ipv6_dev_ac_dec(dev, &pac->acl_addr);
  sock_kfree_s(sk, pac, sizeof(*pac));
  pac = next;
 }
 if (dev)
  dev_put(dev);
}
