
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_device {int mc_tomb_lock; int mc_list_lock; int mr_qrv; int mr_ifc_timer; scalar_t__ mc_count; scalar_t__ mr_ifc_count; int mr_gq_timer; scalar_t__ mr_gq_running; int * mc_tomb; } ;


 int ASSERT_RTNL () ;
 int IGMP_Unsolicited_Report_Count ;
 int igmp_gq_timer_expire ;
 int igmp_ifc_timer_expire ;
 int rwlock_init (int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;

void ip_mc_init_dev(struct in_device *in_dev)
{
 ASSERT_RTNL();

 in_dev->mc_tomb = ((void*)0);
 rwlock_init(&in_dev->mc_list_lock);
 spin_lock_init(&in_dev->mc_tomb_lock);
}
