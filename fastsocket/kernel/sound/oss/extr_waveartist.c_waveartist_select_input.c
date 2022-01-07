
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wavnc_info ;


 unsigned int ADC_MUX_AUX1 ;
 unsigned int ADC_MUX_AUX2 ;
 unsigned int ADC_MUX_LINE ;
 unsigned int ADC_MUX_MIC ;
 unsigned int ADC_MUX_MIXER ;
 unsigned int ADC_MUX_NONE ;
 unsigned int SOUND_MASK_IMIX ;
 unsigned int SOUND_MASK_LINE ;
 unsigned int SOUND_MASK_LINE1 ;
 unsigned int SOUND_MASK_LINE2 ;
 unsigned int SOUND_MASK_MIC ;

__attribute__((used)) static unsigned int
waveartist_select_input(wavnc_info *devc, unsigned int recmask,
   unsigned char *dev_l, unsigned char *dev_r)
{
 unsigned int recdev = ADC_MUX_NONE;

 if (recmask & SOUND_MASK_IMIX) {
  recmask = SOUND_MASK_IMIX;
  recdev = ADC_MUX_MIXER;
 } else if (recmask & SOUND_MASK_LINE2) {
  recmask = SOUND_MASK_LINE2;
  recdev = ADC_MUX_AUX2;
 } else if (recmask & SOUND_MASK_LINE1) {
  recmask = SOUND_MASK_LINE1;
  recdev = ADC_MUX_AUX1;
 } else if (recmask & SOUND_MASK_LINE) {
  recmask = SOUND_MASK_LINE;
  recdev = ADC_MUX_LINE;
 } else if (recmask & SOUND_MASK_MIC) {
  recmask = SOUND_MASK_MIC;
  recdev = ADC_MUX_MIC;
 }

 *dev_l = *dev_r = recdev;

 return recmask;
}
