
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct in_device {int dummy; } ;


 int IPV4_DEVCONF_MAX ;
 struct in_device* __in_dev_get_rtnl (struct net_device const*) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static size_t inet_get_link_af_size(const struct net_device *dev)
{
 struct in_device *in_dev = __in_dev_get_rtnl(dev);

 if (!in_dev)
  return 0;

 return nla_total_size(IPV4_DEVCONF_MAX * 4);
}
