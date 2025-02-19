
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlmsghdr {int dummy; } ;
struct in_ifaddr {int ifa_flags; scalar_t__ ifa_scope; scalar_t__ ifa_mask; int ifa_address; struct in_ifaddr* ifa_next; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;


 int ASSERT_RTNL () ;
 int IFA_F_SECONDARY ;
 int IN_DEV_PROMOTE_SECONDARIES (struct in_device*) ;
 int NETDEV_DOWN ;
 int NETDEV_UP ;
 int RTM_DELADDR ;
 int RTM_NEWADDR ;
 int blocking_notifier_call_chain (int *,int ,struct in_ifaddr*) ;
 int fib_add_ifaddr (struct in_ifaddr*) ;
 int inet_free_ifa (struct in_ifaddr*) ;
 int inet_ifa_match (int ,struct in_ifaddr*) ;
 int inetaddr_chain ;
 int rtmsg_ifa (int ,struct in_ifaddr*,struct nlmsghdr*,int ) ;

__attribute__((used)) static void __inet_del_ifa(struct in_device *in_dev, struct in_ifaddr **ifap,
    int destroy, struct nlmsghdr *nlh, u32 pid)
{
 struct in_ifaddr *promote = ((void*)0);
 struct in_ifaddr *ifa, *ifa1 = *ifap;
 struct in_ifaddr *last_prim = in_dev->ifa_list;
 struct in_ifaddr *prev_prom = ((void*)0);
 int do_promote = IN_DEV_PROMOTE_SECONDARIES(in_dev);

 ASSERT_RTNL();





 if (!(ifa1->ifa_flags & IFA_F_SECONDARY)) {
  struct in_ifaddr **ifap1 = &ifa1->ifa_next;

  while ((ifa = *ifap1) != ((void*)0)) {
   if (!(ifa->ifa_flags & IFA_F_SECONDARY) &&
       ifa1->ifa_scope <= ifa->ifa_scope)
    last_prim = ifa;

   if (!(ifa->ifa_flags & IFA_F_SECONDARY) ||
       ifa1->ifa_mask != ifa->ifa_mask ||
       !inet_ifa_match(ifa1->ifa_address, ifa)) {
    ifap1 = &ifa->ifa_next;
    prev_prom = ifa;
    continue;
   }

   if (!do_promote) {
    *ifap1 = ifa->ifa_next;

    rtmsg_ifa(RTM_DELADDR, ifa, nlh, pid);
    blocking_notifier_call_chain(&inetaddr_chain,
      NETDEV_DOWN, ifa);
    inet_free_ifa(ifa);
   } else {
    promote = ifa;
    break;
   }
  }
 }



 *ifap = ifa1->ifa_next;
 rtmsg_ifa(RTM_DELADDR, ifa1, nlh, pid);
 blocking_notifier_call_chain(&inetaddr_chain, NETDEV_DOWN, ifa1);

 if (promote) {

  if (prev_prom) {
   prev_prom->ifa_next = promote->ifa_next;
   promote->ifa_next = last_prim->ifa_next;
   last_prim->ifa_next = promote;
  }

  promote->ifa_flags &= ~IFA_F_SECONDARY;
  rtmsg_ifa(RTM_NEWADDR, promote, nlh, pid);
  blocking_notifier_call_chain(&inetaddr_chain,
    NETDEV_UP, promote);
  for (ifa = promote->ifa_next; ifa; ifa = ifa->ifa_next) {
   if (ifa1->ifa_mask != ifa->ifa_mask ||
       !inet_ifa_match(ifa1->ifa_address, ifa))
     continue;
   fib_add_ifaddr(ifa);
  }

 }
 if (destroy)
  inet_free_ifa(ifa1);
}
