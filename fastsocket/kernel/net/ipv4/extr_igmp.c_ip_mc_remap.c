
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mc_list {struct ip_mc_list* next; } ;
struct in_device {struct ip_mc_list* mc_list; } ;


 int ASSERT_RTNL () ;
 int igmp_group_added (struct ip_mc_list*) ;

void ip_mc_remap(struct in_device *in_dev)
{
 struct ip_mc_list *i;

 ASSERT_RTNL();

 for (i = in_dev->mc_list; i; i = i->next)
  igmp_group_added(i);
}
