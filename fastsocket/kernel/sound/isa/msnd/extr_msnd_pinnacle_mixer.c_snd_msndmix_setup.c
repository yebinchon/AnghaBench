
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_msnd {scalar_t__ type; } ;


 int HDEXAR_AUX_SET_POTS ;
 int HDEXAR_IN_SET_POTS ;
 int HDEXAR_MIC_SET_POTS ;
 int MSND_MIXER_AUX ;
 int MSND_MIXER_IMIX ;
 int MSND_MIXER_LINE ;
 int MSND_MIXER_MIC ;
 int MSND_MIXER_PCM ;
 int MSND_MIXER_SYNTH ;
 int bAuxPotPos ;
 int bInPotPos ;
 int bMicPotPos ;
 scalar_t__ msndPinnacle ;
 int update_pot (int ,int ,int ) ;
 int update_potm (int ,int ,int ) ;
 int update_volm (int ,int ) ;
 int wCurrInVol ;
 int wCurrMHdrVol ;
 int wCurrPlayVol ;

void snd_msndmix_setup(struct snd_msnd *dev)
{
 update_pot(MSND_MIXER_LINE, bInPotPos, HDEXAR_IN_SET_POTS);
 update_potm(MSND_MIXER_AUX, bAuxPotPos, HDEXAR_AUX_SET_POTS);
 update_volm(MSND_MIXER_PCM, wCurrPlayVol);
 update_volm(MSND_MIXER_IMIX, wCurrInVol);
 if (dev->type == msndPinnacle) {
  update_pot(MSND_MIXER_MIC, bMicPotPos, HDEXAR_MIC_SET_POTS);
  update_volm(MSND_MIXER_SYNTH, wCurrMHdrVol);
 }
}
