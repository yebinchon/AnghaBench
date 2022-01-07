
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int lock; scalar_t__ mc_v1_seen; int mc_maxdelay; int mc_qrv; int mc_ifc_timer; scalar_t__ mc_ifc_count; int * mc_tomb; int mc_gq_timer; scalar_t__ mc_gq_running; int mc_lock; } ;


 int IGMP6_UNSOLICITED_IVAL ;
 int MLD_QRV_DEFAULT ;
 int mld_gq_timer_expire ;
 int mld_ifc_timer_expire ;
 int rwlock_init (int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ipv6_mc_init_dev(struct inet6_dev *idev)
{
 write_lock_bh(&idev->lock);
 rwlock_init(&idev->mc_lock);
 idev->mc_gq_running = 0;
 setup_timer(&idev->mc_gq_timer, mld_gq_timer_expire,
   (unsigned long)idev);
 idev->mc_tomb = ((void*)0);
 idev->mc_ifc_count = 0;
 setup_timer(&idev->mc_ifc_timer, mld_ifc_timer_expire,
   (unsigned long)idev);
 idev->mc_qrv = MLD_QRV_DEFAULT;
 idev->mc_maxdelay = IGMP6_UNSOLICITED_IVAL;
 idev->mc_v1_seen = 0;
 write_unlock_bh(&idev->lock);
}
