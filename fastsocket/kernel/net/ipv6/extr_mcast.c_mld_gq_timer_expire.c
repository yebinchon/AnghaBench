
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {scalar_t__ mc_gq_running; } ;


 int __in6_dev_put (struct inet6_dev*) ;
 int mld_send_report (struct inet6_dev*,int *) ;

__attribute__((used)) static void mld_gq_timer_expire(unsigned long data)
{
 struct inet6_dev *idev = (struct inet6_dev *)data;

 idev->mc_gq_running = 0;
 mld_send_report(idev, ((void*)0));
 __in6_dev_put(idev);
}
