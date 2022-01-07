
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int mc_maxdelay; scalar_t__ mc_ifc_count; } ;


 int __in6_dev_put (struct inet6_dev*) ;
 int mld_ifc_start_timer (struct inet6_dev*,int ) ;
 int mld_send_cr (struct inet6_dev*) ;

__attribute__((used)) static void mld_ifc_timer_expire(unsigned long data)
{
 struct inet6_dev *idev = (struct inet6_dev *)data;

 mld_send_cr(idev);
 if (idev->mc_ifc_count) {
  idev->mc_ifc_count--;
  if (idev->mc_ifc_count)
   mld_ifc_start_timer(idev, idev->mc_maxdelay);
 }
 __in6_dev_put(idev);
}
