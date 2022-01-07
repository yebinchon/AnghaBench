
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int mc_maxdelay; int mc_gq_running; int mc_gq_timer; } ;


 int in6_dev_hold (struct inet6_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int net_random () ;

__attribute__((used)) static void mld_gq_start_timer(struct inet6_dev *idev)
{
 int tv = net_random() % idev->mc_maxdelay;

 idev->mc_gq_running = 1;
 if (!mod_timer(&idev->mc_gq_timer, jiffies+tv+2))
  in6_dev_hold(idev);
}
