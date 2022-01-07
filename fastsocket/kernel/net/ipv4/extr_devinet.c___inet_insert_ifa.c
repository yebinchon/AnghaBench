
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlmsghdr {int dummy; } ;
struct in_ifaddr {scalar_t__ ifa_local; int ifa_flags; scalar_t__ ifa_scope; scalar_t__ ifa_mask; struct in_ifaddr* ifa_next; int ifa_address; struct in_device* ifa_dev; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;


 int ASSERT_RTNL () ;
 int EEXIST ;
 int EINVAL ;
 int IFA_F_SECONDARY ;
 int NETDEV_UP ;
 int RTM_NEWADDR ;
 int blocking_notifier_call_chain (int *,int ,struct in_ifaddr*) ;
 int inet_free_ifa (struct in_ifaddr*) ;
 scalar_t__ inet_ifa_match (int ,struct in_ifaddr*) ;
 int inetaddr_chain ;
 int net_srandom (scalar_t__) ;
 int rtmsg_ifa (int ,struct in_ifaddr*,struct nlmsghdr*,int ) ;

__attribute__((used)) static int __inet_insert_ifa(struct in_ifaddr *ifa, struct nlmsghdr *nlh,
        u32 pid)
{
 struct in_device *in_dev = ifa->ifa_dev;
 struct in_ifaddr *ifa1, **ifap, **last_primary;

 ASSERT_RTNL();

 if (!ifa->ifa_local) {
  inet_free_ifa(ifa);
  return 0;
 }

 ifa->ifa_flags &= ~IFA_F_SECONDARY;
 last_primary = &in_dev->ifa_list;

 for (ifap = &in_dev->ifa_list; (ifa1 = *ifap) != ((void*)0);
      ifap = &ifa1->ifa_next) {
  if (!(ifa1->ifa_flags & IFA_F_SECONDARY) &&
      ifa->ifa_scope <= ifa1->ifa_scope)
   last_primary = &ifa1->ifa_next;
  if (ifa1->ifa_mask == ifa->ifa_mask &&
      inet_ifa_match(ifa1->ifa_address, ifa)) {
   if (ifa1->ifa_local == ifa->ifa_local) {
    inet_free_ifa(ifa);
    return -EEXIST;
   }
   if (ifa1->ifa_scope != ifa->ifa_scope) {
    inet_free_ifa(ifa);
    return -EINVAL;
   }
   ifa->ifa_flags |= IFA_F_SECONDARY;
  }
 }

 if (!(ifa->ifa_flags & IFA_F_SECONDARY)) {
  net_srandom(ifa->ifa_local);
  ifap = last_primary;
 }

 ifa->ifa_next = *ifap;
 *ifap = ifa;




 rtmsg_ifa(RTM_NEWADDR, ifa, nlh, pid);
 blocking_notifier_call_chain(&inetaddr_chain, NETDEV_UP, ifa);

 return 0;
}
