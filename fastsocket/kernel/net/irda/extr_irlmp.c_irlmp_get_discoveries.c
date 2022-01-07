
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irda_device_info {int dummy; } ;
typedef int __u16 ;
struct TYPE_2__ {int cachelog; } ;


 int DISCOVERY_DEFAULT_SLOTS ;
 int TRUE ;
 TYPE_1__* irlmp ;
 struct irda_device_info* irlmp_copy_discoveries (int ,int*,int ,int ) ;
 int irlmp_do_discovery (int) ;
 int sysctl_discovery ;
 int sysctl_discovery_slots ;

struct irda_device_info *irlmp_get_discoveries(int *pn, __u16 mask, int nslots)
{





 if (!sysctl_discovery) {

  if (nslots == DISCOVERY_DEFAULT_SLOTS)
   nslots = sysctl_discovery_slots;


  irlmp_do_discovery(nslots);



 }


 return(irlmp_copy_discoveries(irlmp->cachelog, pn, mask, TRUE));
}
