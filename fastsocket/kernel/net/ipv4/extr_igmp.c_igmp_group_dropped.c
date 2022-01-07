
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mc_list {scalar_t__ multiaddr; int reporter; scalar_t__ loaded; struct in_device* interface; } ;
struct in_device {int dead; } ;


 scalar_t__ IGMP_ALL_HOSTS ;
 int IGMP_HOST_LEAVE_MESSAGE ;
 scalar_t__ IGMP_V1_SEEN (struct in_device*) ;
 scalar_t__ IGMP_V2_SEEN (struct in_device*) ;
 int igmp_ifc_event (struct in_device*) ;
 int igmp_send_report (struct in_device*,struct ip_mc_list*,int ) ;
 int igmp_stop_timer (struct ip_mc_list*) ;
 int igmpv3_add_delrec (struct in_device*,struct ip_mc_list*) ;
 int ip_mc_filter_del (struct in_device*,scalar_t__) ;

__attribute__((used)) static void igmp_group_dropped(struct ip_mc_list *im)
{
 struct in_device *in_dev = im->interface;




 if (im->loaded) {
  im->loaded = 0;
  ip_mc_filter_del(in_dev, im->multiaddr);
 }
}
