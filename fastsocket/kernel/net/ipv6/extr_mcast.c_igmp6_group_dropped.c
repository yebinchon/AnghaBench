
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int addr_len; } ;
struct ifmcaddr6 {int mca_flags; int mca_lock; int mca_refcnt; int mca_timer; TYPE_1__* idev; int mca_addr; } ;
struct TYPE_2__ {int dead; struct net_device* dev; } ;


 int MAF_LOADED ;
 int MAF_NOREPORT ;
 int MAX_ADDR_LEN ;
 int atomic_dec (int *) ;
 scalar_t__ del_timer (int *) ;
 int dev_mc_delete (struct net_device*,char*,int ,int ) ;
 int igmp6_leave_group (struct ifmcaddr6*) ;
 int ip6_mc_clear_src (struct ifmcaddr6*) ;
 scalar_t__ ndisc_mc_map (int *,char*,struct net_device*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void igmp6_group_dropped(struct ifmcaddr6 *mc)
{
 struct net_device *dev = mc->idev->dev;
 char buf[MAX_ADDR_LEN];

 spin_lock_bh(&mc->mca_lock);
 if (mc->mca_flags&MAF_LOADED) {
  mc->mca_flags &= ~MAF_LOADED;
  if (ndisc_mc_map(&mc->mca_addr, buf, dev, 0) == 0)
   dev_mc_delete(dev, buf, dev->addr_len, 0);
 }

 if (mc->mca_flags & MAF_NOREPORT)
  goto done;
 spin_unlock_bh(&mc->mca_lock);

 if (!mc->idev->dead)
  igmp6_leave_group(mc);

 spin_lock_bh(&mc->mca_lock);
 if (del_timer(&mc->mca_timer))
  atomic_dec(&mc->mca_refcnt);
done:
 ip6_mc_clear_src(mc);
 spin_unlock_bh(&mc->mca_lock);
}
