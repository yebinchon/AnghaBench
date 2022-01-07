
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_mib {int dummy; } ;


 scalar_t__ sctp_statistics ;
 int snmp_mib_init (void**,int) ;

__attribute__((used)) static inline int init_sctp_mibs(void)
{
 return snmp_mib_init((void**)sctp_statistics, sizeof(struct sctp_mib));
}
