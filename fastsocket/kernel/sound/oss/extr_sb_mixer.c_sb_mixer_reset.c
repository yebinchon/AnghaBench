
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sm_games; } ;
struct TYPE_8__ {int sbmixnum; scalar_t__ model; int * levels; TYPE_1__ sbmo; } ;
typedef TYPE_2__ sb_devc ;


 scalar_t__ MDL_ESS ;
 int SOUND_MASK_MIC ;
 int SOUND_MIXER_NRDEVICES ;
 int ess_mixer_reset (TYPE_2__*) ;
 void* load_mixer_volumes (char*,int ,int) ;
 int sb_default_levels ;
 int sb_mixer_set (TYPE_2__*,int,int ) ;
 int set_recmask (TYPE_2__*,int ) ;
 int smg_default_levels ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void sb_mixer_reset(sb_devc * devc)
{
 char name[32];
 int i;

 sprintf(name, "SB_%d", devc->sbmixnum);

 if (devc->sbmo.sm_games)
  devc->levels = load_mixer_volumes(name, smg_default_levels, 1);
 else
  devc->levels = load_mixer_volumes(name, sb_default_levels, 1);

 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
  sb_mixer_set(devc, i, devc->levels[i]);

 if (devc->model != MDL_ESS || !ess_mixer_reset (devc)) {
  set_recmask(devc, SOUND_MASK_MIC);
 };
}
