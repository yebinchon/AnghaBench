
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct ip_mreqn {int imr_ifindex; TYPE_1__ imr_multiaddr; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct TYPE_6__ {int imr_ifindex; TYPE_2__ imr_multiaddr; } ;
struct ip_mc_socklist {int sfmode; int * sflist; struct ip_mc_socklist* next; TYPE_3__ multi; } ;
struct inet_sock {struct ip_mc_socklist* mc_list; } ;
struct in_device {int dummy; } ;
typedef scalar_t__ __be32 ;


 int EADDRINUSE ;
 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 int GFP_KERNEL ;
 int MCAST_EXCLUDE ;
 struct inet_sock* inet_sk (struct sock*) ;
 struct in_device* ip_mc_find_dev (struct net*,struct ip_mreqn*) ;
 int ip_mc_inc_group (struct in_device*,scalar_t__) ;
 int ipv4_is_multicast (scalar_t__) ;
 int memcpy (TYPE_3__*,struct ip_mreqn*,int) ;
 int rcu_assign_pointer (struct ip_mc_socklist*,struct ip_mc_socklist*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct ip_mc_socklist* sock_kmalloc (struct sock*,int,int ) ;
 struct net* sock_net (struct sock*) ;
 int sysctl_igmp_max_memberships ;

int ip_mc_join_group(struct sock *sk , struct ip_mreqn *imr)
{
 int err;
 __be32 addr = imr->imr_multiaddr.s_addr;
 struct ip_mc_socklist *iml = ((void*)0), *i;
 struct in_device *in_dev;
 struct inet_sock *inet = inet_sk(sk);
 struct net *net = sock_net(sk);
 int ifindex;
 int count = 0;

 if (!ipv4_is_multicast(addr))
  return -EINVAL;

 rtnl_lock();

 in_dev = ip_mc_find_dev(net, imr);

 if (!in_dev) {
  iml = ((void*)0);
  err = -ENODEV;
  goto done;
 }

 err = -EADDRINUSE;
 ifindex = imr->imr_ifindex;
 for (i = inet->mc_list; i; i = i->next) {
  if (i->multi.imr_multiaddr.s_addr == addr &&
      i->multi.imr_ifindex == ifindex)
   goto done;
  count++;
 }
 err = -ENOBUFS;
 if (count >= sysctl_igmp_max_memberships)
  goto done;
 iml = sock_kmalloc(sk, sizeof(*iml), GFP_KERNEL);
 if (iml == ((void*)0))
  goto done;

 memcpy(&iml->multi, imr, sizeof(*imr));
 iml->next = inet->mc_list;
 iml->sflist = ((void*)0);
 iml->sfmode = MCAST_EXCLUDE;
 rcu_assign_pointer(inet->mc_list, iml);
 ip_mc_inc_group(in_dev, addr);
 err = 0;
done:
 rtnl_unlock();
 return err;
}
