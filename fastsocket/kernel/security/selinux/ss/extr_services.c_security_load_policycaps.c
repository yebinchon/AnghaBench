
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int policycaps; } ;


 int POLICYDB_CAPABILITY_NETPEER ;
 int POLICYDB_CAPABILITY_OPENPERM ;
 void* ebitmap_get_bit (int *,int ) ;
 TYPE_1__ policydb ;
 void* selinux_policycap_netpeer ;
 void* selinux_policycap_openperm ;

__attribute__((used)) static void security_load_policycaps(void)
{
 selinux_policycap_netpeer = ebitmap_get_bit(&policydb.policycaps,
        POLICYDB_CAPABILITY_NETPEER);
 selinux_policycap_openperm = ebitmap_get_bit(&policydb.policycaps,
        POLICYDB_CAPABILITY_OPENPERM);
}
