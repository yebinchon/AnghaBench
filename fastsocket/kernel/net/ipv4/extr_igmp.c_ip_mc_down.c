
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mc_list {struct ip_mc_list* next; } ;
struct in_device {int mr_gq_timer; scalar_t__ mr_gq_running; int mr_ifc_timer; scalar_t__ mr_ifc_count; struct ip_mc_list* mc_list; } ;


 int ASSERT_RTNL () ;
 int IGMP_ALL_HOSTS ;
 int __in_dev_put (struct in_device*) ;
 scalar_t__ del_timer (int *) ;
 int igmp_group_dropped (struct ip_mc_list*) ;
 int igmpv3_clear_delrec (struct in_device*) ;
 int ip_mc_dec_group (struct in_device*,int ) ;

void ip_mc_down(struct in_device *in_dev)
{
 struct ip_mc_list *i;

 ASSERT_RTNL();

 for (i=in_dev->mc_list; i; i=i->next)
  igmp_group_dropped(i);
 ip_mc_dec_group(in_dev, IGMP_ALL_HOSTS);
}
