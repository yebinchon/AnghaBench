
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int mc_qrv; int mc_ifc_count; } ;


 scalar_t__ MLD_V1_SEEN (struct inet6_dev*) ;
 int mld_ifc_start_timer (struct inet6_dev*,int) ;

__attribute__((used)) static void mld_ifc_event(struct inet6_dev *idev)
{
 if (MLD_V1_SEEN(idev))
  return;
 idev->mc_ifc_count = idev->mc_qrv;
 mld_ifc_start_timer(idev, 1);
}
