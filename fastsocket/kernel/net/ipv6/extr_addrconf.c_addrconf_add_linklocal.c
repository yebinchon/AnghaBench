
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct inet6_ifaddr {int prefix_len; int addr; } ;
struct TYPE_5__ {scalar_t__ optimistic_dad; } ;
struct inet6_dev {int dev; TYPE_1__ cnf; } ;
struct in6_addr {int dummy; } ;
struct TYPE_7__ {TYPE_2__* devconf_all; } ;
struct TYPE_8__ {TYPE_3__ ipv6; } ;
struct TYPE_6__ {int forwarding; } ;


 int IFA_F_OPTIMISTIC ;
 int IFA_F_PERMANENT ;
 int IFA_LINK ;
 int IS_ERR (struct inet6_ifaddr*) ;
 int addrconf_dad_start (struct inet6_ifaddr*,int ) ;
 int addrconf_prefix_route (int *,int ,int ,int ,int ) ;
 TYPE_4__* dev_net (int ) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 struct inet6_ifaddr* ipv6_add_addr (struct inet6_dev*,struct in6_addr*,int,int ,int ,int ,int ) ;

__attribute__((used)) static void addrconf_add_linklocal(struct inet6_dev *idev, struct in6_addr *addr)
{
 struct inet6_ifaddr * ifp;
 u32 addr_flags = IFA_F_PERMANENT;
 ifp = ipv6_add_addr(idev, addr, 64, IFA_LINK, addr_flags, 0, 0);
 if (!IS_ERR(ifp)) {
  addrconf_prefix_route(&ifp->addr, ifp->prefix_len, idev->dev, 0, 0);
  addrconf_dad_start(ifp, 0);
  in6_ifa_put(ifp);
 }
}
