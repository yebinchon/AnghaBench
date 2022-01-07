
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmpd_usmstat {int dummy; } ;


 struct snmpd_usmstat snmpd_usmstats ;

struct snmpd_usmstat *
bsnmpd_get_usm_stats(void)
{
 return (&snmpd_usmstats);
}
