
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int prefix_len; int addr; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef scalar_t__ clock_t ;
typedef int __u8 ;
typedef unsigned long __u32 ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 unsigned long HZ ;
 int IFA_F_DEPRECATED ;
 int IFA_F_PERMANENT ;
 int IS_ERR (struct inet6_ifaddr*) ;
 int PTR_ERR (struct inet6_ifaddr*) ;
 scalar_t__ RTF_EXPIRES ;
 struct net_device* __dev_get_by_index (struct net*,int) ;
 struct inet6_dev* addrconf_add_dev (struct net_device*) ;
 int addrconf_dad_start (struct inet6_ifaddr*,int ) ;
 scalar_t__ addrconf_finite_timeout (unsigned long) ;
 int addrconf_prefix_route (int *,int ,struct net_device*,scalar_t__,scalar_t__) ;
 unsigned long addrconf_timeout_fixup (unsigned long,unsigned long) ;
 int addrconf_verify (int ) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 struct inet6_ifaddr* ipv6_add_addr (struct inet6_dev*,struct in6_addr*,unsigned int,int,int ,unsigned long,unsigned long) ;
 int ipv6_addr_scope (struct in6_addr*) ;
 scalar_t__ jiffies_to_clock_t (unsigned long) ;

__attribute__((used)) static int inet6_addr_add(struct net *net, int ifindex, struct in6_addr *pfx,
     unsigned int plen, __u8 ifa_flags, __u32 prefered_lft,
     __u32 valid_lft)
{
 struct inet6_ifaddr *ifp;
 struct inet6_dev *idev;
 struct net_device *dev;
 int scope;
 u32 flags;
 clock_t expires;
 unsigned long timeout;

 ASSERT_RTNL();

 if (plen > 128)
  return -EINVAL;


 if (!valid_lft || prefered_lft > valid_lft)
  return -EINVAL;

 dev = __dev_get_by_index(net, ifindex);
 if (!dev)
  return -ENODEV;

 if ((idev = addrconf_add_dev(dev)) == ((void*)0))
  return -ENOBUFS;

 scope = ipv6_addr_scope(pfx);

 timeout = addrconf_timeout_fixup(valid_lft, HZ);
 if (addrconf_finite_timeout(timeout)) {
  expires = jiffies_to_clock_t(timeout * HZ);
  valid_lft = timeout;
  flags = RTF_EXPIRES;
 } else {
  expires = 0;
  flags = 0;
  ifa_flags |= IFA_F_PERMANENT;
 }

 timeout = addrconf_timeout_fixup(prefered_lft, HZ);
 if (addrconf_finite_timeout(timeout)) {
  if (timeout == 0)
   ifa_flags |= IFA_F_DEPRECATED;
  prefered_lft = timeout;
 }

 ifp = ipv6_add_addr(idev, pfx, plen, scope, ifa_flags, valid_lft,
       prefered_lft);

 if (!IS_ERR(ifp)) {
  addrconf_prefix_route(&ifp->addr, ifp->prefix_len, dev,
          expires, flags);





  addrconf_dad_start(ifp, 0);
  in6_ifa_put(ifp);
  addrconf_verify(0);
  return 0;
 }

 return PTR_ERR(ifp);
}
