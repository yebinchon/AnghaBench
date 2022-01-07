
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ifmcaddr6 {int mca_flags; TYPE_1__* idev; int mca_addr; } ;
struct TYPE_4__ {int dev; } ;


 int ICMPV6_MGM_REDUCTION ;
 int MAF_LAST_REPORTER ;
 scalar_t__ MLD_V1_SEEN (TYPE_1__*) ;
 int igmp6_send (int *,int ,int ) ;
 int mld_add_delrec (TYPE_1__*,struct ifmcaddr6*) ;
 int mld_ifc_event (TYPE_1__*) ;

__attribute__((used)) static void igmp6_leave_group(struct ifmcaddr6 *ma)
{
 if (MLD_V1_SEEN(ma->idev)) {
  if (ma->mca_flags & MAF_LAST_REPORTER)
   igmp6_send(&ma->mca_addr, ma->idev->dev,
    ICMPV6_MGM_REDUCTION);
 } else {
  mld_add_delrec(ma->idev, ma);
  mld_ifc_event(ma->idev);
 }
}
