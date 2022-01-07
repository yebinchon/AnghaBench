
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int policycaps; } ;


 int ebitmap_get_bit (int *,unsigned int) ;
 int policy_rwlock ;
 TYPE_1__ policydb ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

int security_policycap_supported(unsigned int req_cap)
{
 int rc;

 read_lock(&policy_rwlock);
 rc = ebitmap_get_bit(&policydb.policycaps, req_cap);
 read_unlock(&policy_rwlock);

 return rc;
}
