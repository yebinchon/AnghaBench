
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int recmask; int submodel; } ;
typedef TYPE_1__ sb_devc ;


 int ES_REC_MIXER_RECDIFF ;
 scalar_t__ ess_has_rec_mixer (int ) ;
 int sb_common_mixer_set (TYPE_1__*,int,int,int) ;

int ess_mixer_set(sb_devc *devc, int dev, int left, int right)
{
 if (ess_has_rec_mixer (devc->submodel) && (devc->recmask & (1 << dev))) {
  sb_common_mixer_set (devc, dev + ES_REC_MIXER_RECDIFF, left, right);
 }
 return sb_common_mixer_set (devc, dev, left, right);
}
