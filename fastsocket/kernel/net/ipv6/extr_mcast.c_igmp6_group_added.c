
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; int addr_len; } ;
struct ifmcaddr6 {int mca_flags; TYPE_1__* idev; int mca_crcount; int mca_lock; int mca_addr; } ;
struct TYPE_3__ {int mc_qrv; struct net_device* dev; } ;


 int IFF_UP ;
 int MAF_LOADED ;
 int MAF_NOREPORT ;
 int MAX_ADDR_LEN ;
 scalar_t__ MLD_V1_SEEN (TYPE_1__*) ;
 int dev_mc_add (struct net_device*,char*,int ,int ) ;
 int igmp6_join_group (struct ifmcaddr6*) ;
 int mld_ifc_event (TYPE_1__*) ;
 scalar_t__ ndisc_mc_map (int *,char*,struct net_device*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void igmp6_group_added(struct ifmcaddr6 *mc)
{
 struct net_device *dev = mc->idev->dev;
 char buf[MAX_ADDR_LEN];

 spin_lock_bh(&mc->mca_lock);
 if (!(mc->mca_flags&MAF_LOADED)) {
  mc->mca_flags |= MAF_LOADED;
  if (ndisc_mc_map(&mc->mca_addr, buf, dev, 0) == 0)
   dev_mc_add(dev, buf, dev->addr_len, 0);
 }
 spin_unlock_bh(&mc->mca_lock);

 if (!(dev->flags & IFF_UP) || (mc->mca_flags & MAF_NOREPORT))
  return;

 if (MLD_V1_SEEN(mc->idev)) {
  igmp6_join_group(mc);
  return;
 }


 mc->mca_crcount = mc->idev->mc_qrv;
 mld_ifc_event(mc->idev);
}
