
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;


 int IFA_F_TENTATIVE ;
 int addrconf_add_linklocal (struct inet6_dev*,struct in6_addr*) ;
 int ipv6_get_lladdr (struct net_device*,struct in6_addr*,int ) ;

__attribute__((used)) static inline int
ipv6_inherit_linklocal(struct inet6_dev *idev, struct net_device *link_dev)
{
 struct in6_addr lladdr;

 if (!ipv6_get_lladdr(link_dev, &lladdr, IFA_F_TENTATIVE)) {
  addrconf_add_linklocal(idev, &lladdr);
  return 0;
 }
 return -1;
}
