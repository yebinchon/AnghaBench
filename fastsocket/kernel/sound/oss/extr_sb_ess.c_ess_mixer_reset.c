
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int submodel; scalar_t__ recmask; scalar_t__ supported_rec_devices; } ;
typedef TYPE_1__ sb_devc ;



 int es_rec_set_recmask (TYPE_1__*,int ) ;
 int ess_chgmixer (TYPE_1__*,int,int,int) ;
 scalar_t__ ess_has_rec_mixer (int) ;

int ess_mixer_reset (sb_devc * devc)
{



 if (ess_has_rec_mixer (devc->submodel)) {
  switch (devc->submodel) {
  case 128:





   ess_chgmixer(devc, 0x7a, 0x18, 0x08);
   ess_chgmixer(devc, 0x1c, 0x07, 0x07);
   break;
  };



  devc->recmask = devc->supported_rec_devices;
  es_rec_set_recmask(devc, 0);
  devc->recmask = 0;

  return 1;
 } else {
  return 0;
 }
}
