
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mc_list {scalar_t__ multiaddr; struct in_device* interface; } ;
struct in_device {int dummy; } ;


 int IGMPV2_HOST_MEMBERSHIP_REPORT ;
 int IGMPV3_HOST_MEMBERSHIP_REPORT ;
 scalar_t__ IGMP_ALL_HOSTS ;
 int IGMP_HOST_MEMBERSHIP_REPORT ;
 scalar_t__ IGMP_V1_SEEN (struct in_device*) ;
 scalar_t__ IGMP_V2_SEEN (struct in_device*) ;
 int igmp_send_report (struct in_device*,struct ip_mc_list*,int ) ;

void ip_mc_rejoin_group(struct ip_mc_list *im)
{
}
