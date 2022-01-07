
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int submodel; } ;
typedef TYPE_1__ sb_devc ;


 int es_rec_set_recmask (TYPE_1__*,int) ;
 scalar_t__ ess_has_rec_mixer (int ) ;

int ess_set_recmask(sb_devc * devc, int *mask)
{


 if (ess_has_rec_mixer (devc->submodel)) {
  *mask = es_rec_set_recmask (devc, *mask);
  return 1;
 } else {
  return 0;
 }
}
