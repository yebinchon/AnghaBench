
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int const* host_mac; } ;


 TYPE_1__* rndis_per_dev_params ;

void rndis_set_host_mac (int configNr, const u8 *addr)
{
 rndis_per_dev_params [configNr].host_mac = addr;
}
