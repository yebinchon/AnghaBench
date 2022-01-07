
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int mc_ifc_timer; } ;


 int in6_dev_hold (struct inet6_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int net_random () ;

__attribute__((used)) static void mld_ifc_start_timer(struct inet6_dev *idev, int delay)
{
 int tv = net_random() % delay;

 if (!mod_timer(&idev->mc_ifc_timer, jiffies+tv+2))
  in6_dev_hold(idev);
}
