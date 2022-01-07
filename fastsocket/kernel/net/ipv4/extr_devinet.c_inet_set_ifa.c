
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct in_ifaddr {int ifa_scope; int ifa_local; struct in_device* ifa_dev; } ;
struct in_device {int dummy; } ;


 int ASSERT_RTNL () ;
 int ENOBUFS ;
 int RT_SCOPE_HOST ;
 int WARN_ON (struct in_device*) ;
 struct in_device* __in_dev_get_rtnl (struct net_device*) ;
 int in_dev_hold (struct in_device*) ;
 int inet_free_ifa (struct in_ifaddr*) ;
 int inet_insert_ifa (struct in_ifaddr*) ;
 int ipv4_devconf_setall (struct in_device*) ;
 scalar_t__ ipv4_is_loopback (int ) ;

__attribute__((used)) static int inet_set_ifa(struct net_device *dev, struct in_ifaddr *ifa)
{
 struct in_device *in_dev = __in_dev_get_rtnl(dev);

 ASSERT_RTNL();

 if (!in_dev) {
  inet_free_ifa(ifa);
  return -ENOBUFS;
 }
 ipv4_devconf_setall(in_dev);
 if (ifa->ifa_dev != in_dev) {
  WARN_ON(ifa->ifa_dev);
  in_dev_hold(in_dev);
  ifa->ifa_dev = in_dev;
 }
 if (ipv4_is_loopback(ifa->ifa_local))
  ifa->ifa_scope = RT_SCOPE_HOST;
 return inet_insert_ifa(ifa);
}
