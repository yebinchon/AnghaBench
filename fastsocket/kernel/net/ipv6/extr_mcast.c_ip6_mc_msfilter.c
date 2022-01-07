
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {struct ipv6_mc_socklist* ipv6_mc_list; } ;
struct ipv6_mc_socklist {int sflock; int sfmode; struct ip6_sf_socklist* sflist; int addr; int ifindex; struct ipv6_mc_socklist* next; } ;
struct ip6_sf_socklist {int sl_max; int sl_count; struct in6_addr* sl_addr; } ;
struct inet6_dev {int lock; struct net_device* dev; } ;
struct group_filter {scalar_t__ gf_numsrc; int gf_interface; int gf_fmode; int * gf_slist; int gf_group; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 int GFP_ATOMIC ;
 int IP6_SFLSIZE (int) ;
 int MCAST_EXCLUDE ;
 int MCAST_INCLUDE ;
 int dev_put (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ip6_mc_add_src (struct inet6_dev*,struct in6_addr*,int ,int,struct in6_addr*,int ) ;
 int ip6_mc_del_src (struct inet6_dev*,struct in6_addr*,int ,int,struct in6_addr*,int ) ;
 struct inet6_dev* ip6_mc_find_dev (struct net*,struct in6_addr*,int ) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr*) ;
 int ipv6_addr_is_multicast (struct in6_addr*) ;
 int ipv6_sk_mc_lock ;
 int ipv6_sock_mc_drop (struct sock*,int ,struct in6_addr*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int sock_kfree_s (struct sock*,struct ip6_sf_socklist*,int ) ;
 struct ip6_sf_socklist* sock_kmalloc (struct sock*,int ,int ) ;
 struct net* sock_net (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int ip6_mc_msfilter(struct sock *sk, struct group_filter *gsf)
{
 struct in6_addr *group;
 struct ipv6_mc_socklist *pmc;
 struct net_device *dev;
 struct inet6_dev *idev;
 struct ipv6_pinfo *inet6 = inet6_sk(sk);
 struct ip6_sf_socklist *newpsl, *psl;
 struct net *net = sock_net(sk);
 int leavegroup = 0;
 int i, err;

 group = &((struct sockaddr_in6 *)&gsf->gf_group)->sin6_addr;

 if (!ipv6_addr_is_multicast(group))
  return -EINVAL;
 if (gsf->gf_fmode != MCAST_INCLUDE &&
     gsf->gf_fmode != MCAST_EXCLUDE)
  return -EINVAL;

 idev = ip6_mc_find_dev(net, group, gsf->gf_interface);

 if (!idev)
  return -ENODEV;
 dev = idev->dev;

 err = 0;
 read_lock_bh(&ipv6_sk_mc_lock);

 if (gsf->gf_fmode == MCAST_INCLUDE && gsf->gf_numsrc == 0) {
  leavegroup = 1;
  goto done;
 }

 for (pmc=inet6->ipv6_mc_list; pmc; pmc=pmc->next) {
  if (pmc->ifindex != gsf->gf_interface)
   continue;
  if (ipv6_addr_equal(&pmc->addr, group))
   break;
 }
 if (!pmc) {
  err = -EINVAL;
  goto done;
 }
 if (gsf->gf_numsrc) {
  newpsl = sock_kmalloc(sk, IP6_SFLSIZE(gsf->gf_numsrc),
         GFP_ATOMIC);
  if (!newpsl) {
   err = -ENOBUFS;
   goto done;
  }
  newpsl->sl_max = newpsl->sl_count = gsf->gf_numsrc;
  for (i=0; i<newpsl->sl_count; ++i) {
   struct sockaddr_in6 *psin6;

   psin6 = (struct sockaddr_in6 *)&gsf->gf_slist[i];
   newpsl->sl_addr[i] = psin6->sin6_addr;
  }
  err = ip6_mc_add_src(idev, group, gsf->gf_fmode,
   newpsl->sl_count, newpsl->sl_addr, 0);
  if (err) {
   sock_kfree_s(sk, newpsl, IP6_SFLSIZE(newpsl->sl_max));
   goto done;
  }
 } else {
  newpsl = ((void*)0);
  (void) ip6_mc_add_src(idev, group, gsf->gf_fmode, 0, ((void*)0), 0);
 }

 write_lock_bh(&pmc->sflock);
 psl = pmc->sflist;
 if (psl) {
  (void) ip6_mc_del_src(idev, group, pmc->sfmode,
   psl->sl_count, psl->sl_addr, 0);
  sock_kfree_s(sk, psl, IP6_SFLSIZE(psl->sl_max));
 } else
  (void) ip6_mc_del_src(idev, group, pmc->sfmode, 0, ((void*)0), 0);
 pmc->sflist = newpsl;
 pmc->sfmode = gsf->gf_fmode;
 write_unlock_bh(&pmc->sflock);
 err = 0;
done:
 read_unlock_bh(&ipv6_sk_mc_lock);
 read_unlock_bh(&idev->lock);
 in6_dev_put(idev);
 dev_put(dev);
 if (leavegroup)
  err = ipv6_sock_mc_drop(sk, gsf->gf_interface, group);
 return err;
}
