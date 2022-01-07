
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cachelog; } ;


 int DISCOVERY_DEFAULT_SLOTS ;
 int DISCOVERY_LOG ;
 TYPE_1__* irlmp ;
 int irlmp_discovery_confirm (int ,int ) ;
 int irlmp_do_discovery (int) ;
 int sysctl_discovery ;
 int sysctl_discovery_slots ;

void irlmp_discovery_request(int nslots)
{

 irlmp_discovery_confirm(irlmp->cachelog, DISCOVERY_LOG);





 if (!sysctl_discovery) {

  if (nslots == DISCOVERY_DEFAULT_SLOTS)
   nslots = sysctl_discovery_slots;

  irlmp_do_discovery(nslots);



 }
}
