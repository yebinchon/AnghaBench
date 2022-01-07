
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sctp_statistics ;
 int snmp_mib_free (void**) ;

__attribute__((used)) static inline void cleanup_sctp_mibs(void)
{
 snmp_mib_free((void**)sctp_statistics);
}
