
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mc_list {int loaded; scalar_t__ crcount; int lock; int multiaddr; struct in_device* interface; } ;
struct in_device {scalar_t__ mr_qrv; scalar_t__ dead; } ;


 int IGMP_ALL_HOSTS ;
 int IGMP_Initial_Report_Delay ;
 scalar_t__ IGMP_Unsolicited_Report_Count ;
 scalar_t__ IGMP_V1_SEEN (struct in_device*) ;
 scalar_t__ IGMP_V2_SEEN (struct in_device*) ;
 int igmp_ifc_event (struct in_device*) ;
 int igmp_start_timer (struct ip_mc_list*,int ) ;
 int ip_mc_filter_add (struct in_device*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void igmp_group_added(struct ip_mc_list *im)
{
 struct in_device *in_dev = im->interface;

 if (im->loaded == 0) {
  im->loaded = 1;
  ip_mc_filter_add(in_dev, im->multiaddr);
 }
}
