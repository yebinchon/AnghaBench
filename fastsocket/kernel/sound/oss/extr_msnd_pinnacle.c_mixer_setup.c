
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HDEXAR_AUX_SET_POTS ;
 int HDEXAR_IN_SET_POTS ;
 int HDEXAR_MIC_SET_POTS ;
 int SOUND_MIXER_IMIX ;
 int SOUND_MIXER_LINE ;
 int SOUND_MIXER_LINE1 ;
 int SOUND_MIXER_MIC ;
 int SOUND_MIXER_PCM ;
 int SOUND_MIXER_SYNTH ;
 int bAuxPotPos ;
 int bInPotPos ;
 int bMicPotPos ;
 int update_pot (int ,int ,int ) ;
 int update_potm (int ,int ,int ) ;
 int update_volm (int ,int ) ;
 int wCurrInVol ;
 int wCurrMHdrVol ;
 int wCurrPlayVol ;

__attribute__((used)) static void mixer_setup(void)
{
 update_pot(SOUND_MIXER_LINE, bInPotPos, HDEXAR_IN_SET_POTS);
 update_potm(SOUND_MIXER_LINE1, bAuxPotPos, HDEXAR_AUX_SET_POTS);
 update_volm(SOUND_MIXER_PCM, wCurrPlayVol);
 update_volm(SOUND_MIXER_IMIX, wCurrInVol);

 update_pot(SOUND_MIXER_MIC, bMicPotPos, HDEXAR_MIC_SET_POTS);
 update_volm(SOUND_MIXER_SYNTH, wCurrMHdrVol);

}
