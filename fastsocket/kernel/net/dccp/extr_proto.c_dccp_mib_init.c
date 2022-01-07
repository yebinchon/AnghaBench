
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccp_mib {int dummy; } ;


 scalar_t__ dccp_statistics ;
 int snmp_mib_init (void**,int) ;

__attribute__((used)) static inline int dccp_mib_init(void)
{
 return snmp_mib_init((void**)dccp_statistics, sizeof(struct dccp_mib));
}
