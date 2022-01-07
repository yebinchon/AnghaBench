
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; } ;
struct inet6_ifaddr {int lock; scalar_t__ prefered_lft; scalar_t__ valid_lft; scalar_t__ tokenized; struct inet6_ifaddr* if_next; } ;
struct TYPE_4__ {scalar_t__ s6_addr; } ;
struct TYPE_3__ {scalar_t__ rtr_solicits; } ;
struct inet6_dev {int if_flags; int lock; struct inet6_ifaddr* addr_list; int dead; TYPE_2__ token; TYPE_1__ cnf; struct net_device* dev; } ;
struct in6_addr {scalar_t__ s6_addr; } ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int IFA_F_OPTIMISTIC ;
 int IFA_F_TENTATIVE ;
 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int IF_READY ;
 int IF_RS_SENT ;
 int addrconf_verify (int ) ;
 int in6addr_linklocal_allrouters ;
 int ipv6_accept_ra (struct inet6_dev*) ;
 scalar_t__ ipv6_addr_any (struct in6_addr*) ;
 int ipv6_get_lladdr (struct net_device*,struct in6_addr*,int) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int ndisc_send_rs (struct net_device*,struct in6_addr*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int inet6_set_iftoken(struct inet6_dev *idev, struct in6_addr *token)
{
 struct inet6_ifaddr *ifp;
 struct net_device *dev = idev->dev;
 bool update_rs = 0;
 struct in6_addr ll_addr;

 if (token == ((void*)0))
  return -EINVAL;
 if (ipv6_addr_any(token))
  return -EINVAL;
 if (dev->flags & (IFF_LOOPBACK | IFF_NOARP))
  return -EINVAL;
 if (!ipv6_accept_ra(idev))
  return -EINVAL;
 if (idev->cnf.rtr_solicits <= 0)
  return -EINVAL;

 write_lock_bh(&idev->lock);

 BUILD_BUG_ON(sizeof(token->s6_addr) != 16);
 memcpy(idev->token.s6_addr + 8, token->s6_addr + 8, 8);

 write_unlock_bh(&idev->lock);

 if (!idev->dead && (idev->if_flags & IF_READY) &&
     !ipv6_get_lladdr(dev, &ll_addr, IFA_F_TENTATIVE |
        IFA_F_OPTIMISTIC)) {




  ndisc_send_rs(dev, &ll_addr, &in6addr_linklocal_allrouters);
  update_rs = 1;
 }

 write_lock_bh(&idev->lock);

 if (update_rs)
  idev->if_flags |= IF_RS_SENT;


 for (ifp = idev->addr_list; ifp; ifp = ifp->if_next) {
  spin_lock(&ifp->lock);
  if (ifp->tokenized) {
   ifp->valid_lft = 0;
   ifp->prefered_lft = 0;
  }
  spin_unlock(&ifp->lock);
 }

 write_unlock_bh(&idev->lock);
 addrconf_verify(0);
 return 0;
}
