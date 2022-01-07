
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int state; } ;


 int RNDIS_MAX_CONFIGS ;
 int RNDIS_UNINITIALIZED ;
 int rndis_free_response (int,int *) ;
 int * rndis_get_next_response (int,int *) ;
 TYPE_1__* rndis_per_dev_params ;

void rndis_uninit (int configNr)
{
 u8 *buf;
 u32 length;

 if (configNr >= RNDIS_MAX_CONFIGS)
  return;
 rndis_per_dev_params [configNr].state = RNDIS_UNINITIALIZED;


 while ((buf = rndis_get_next_response(configNr, &length)))
  rndis_free_response(configNr, buf);
}
