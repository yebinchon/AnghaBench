
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reject_unknown; } ;


 TYPE_1__ policydb ;

int security_get_reject_unknown(void)
{
 return policydb.reject_unknown;
}
