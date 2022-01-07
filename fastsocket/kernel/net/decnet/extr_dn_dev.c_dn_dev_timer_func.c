
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct dn_dev* dn_ptr; } ;
struct dn_ifaddr {int ifa_flags; struct dn_ifaddr* ifa_next; } ;
struct TYPE_2__ {scalar_t__ t2; scalar_t__ t3; int (* timer3 ) (struct net_device*,struct dn_ifaddr*) ;} ;
struct dn_dev {scalar_t__ t3; TYPE_1__ parms; struct dn_ifaddr* ifa_list; } ;


 int IFA_F_SECONDARY ;
 int dn_dev_set_timer (struct net_device*) ;
 int stub1 (struct net_device*,struct dn_ifaddr*) ;

__attribute__((used)) static void dn_dev_timer_func(unsigned long arg)
{
 struct net_device *dev = (struct net_device *)arg;
 struct dn_dev *dn_db = dev->dn_ptr;
 struct dn_ifaddr *ifa;

 if (dn_db->t3 <= dn_db->parms.t2) {
  if (dn_db->parms.timer3) {
   for(ifa = dn_db->ifa_list; ifa; ifa = ifa->ifa_next) {
    if (!(ifa->ifa_flags & IFA_F_SECONDARY))
     dn_db->parms.timer3(dev, ifa);
   }
  }
  dn_db->t3 = dn_db->parms.t3;
 } else {
  dn_db->t3 -= dn_db->parms.t2;
 }

 dn_dev_set_timer(dev);
}
