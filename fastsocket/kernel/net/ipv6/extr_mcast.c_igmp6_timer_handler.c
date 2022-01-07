
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifmcaddr6 {int mca_lock; int mca_flags; TYPE_1__* idev; int mca_addr; } ;
struct TYPE_3__ {int dev; } ;


 int ICMPV6_MGM_REPORT ;
 int MAF_LAST_REPORTER ;
 int MAF_TIMER_RUNNING ;
 scalar_t__ MLD_V1_SEEN (TYPE_1__*) ;
 int igmp6_send (int *,int ,int ) ;
 int ma_put (struct ifmcaddr6*) ;
 int mld_send_report (TYPE_1__*,struct ifmcaddr6*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void igmp6_timer_handler(unsigned long data)
{
 struct ifmcaddr6 *ma = (struct ifmcaddr6 *) data;

 if (MLD_V1_SEEN(ma->idev))
  igmp6_send(&ma->mca_addr, ma->idev->dev, ICMPV6_MGM_REPORT);
 else
  mld_send_report(ma->idev, ma);

 spin_lock(&ma->mca_lock);
 ma->mca_flags |= MAF_LAST_REPORTER;
 ma->mca_flags &= ~MAF_TIMER_RUNNING;
 spin_unlock(&ma->mca_lock);
 ma_put(ma);
}
