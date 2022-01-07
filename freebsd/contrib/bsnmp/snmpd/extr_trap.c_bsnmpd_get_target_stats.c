
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmpd_target_stats {int dummy; } ;


 struct snmpd_target_stats snmpd_target_stats ;

struct snmpd_target_stats *
bsnmpd_get_target_stats(void)
{
 return (&snmpd_target_stats);
}
