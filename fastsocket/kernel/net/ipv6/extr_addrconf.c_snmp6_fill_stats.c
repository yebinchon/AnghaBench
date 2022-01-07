
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ icmpv6; scalar_t__ ipv6; } ;
struct inet6_dev {TYPE_1__ stats; } ;


 int ICMP6_MIB_MAX ;


 int IPSTATS_MIB_MAX ;
 int __snmp6_fill_stats (int *,void**,int ,int) ;

__attribute__((used)) static void snmp6_fill_stats(u64 *stats, struct inet6_dev *idev, int attrtype,
        int bytes)
{
 switch(attrtype) {
 case 128:
  __snmp6_fill_stats(stats, (void **)idev->stats.ipv6, IPSTATS_MIB_MAX, bytes);
  break;
 case 129:
  __snmp6_fill_stats(stats, (void **)idev->stats.icmpv6, ICMP6_MIB_MAX, bytes);
  break;
 }
}
