
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb_devc ;


 int MONO_DAC ;
 int OUT_FILTER ;
 int STEREO_DAC ;
 int sb_chgmixer (int *,int ,int ,int ) ;

void sb_mixer_set_stereo(sb_devc * devc, int mode)
{
 sb_chgmixer(devc, OUT_FILTER, STEREO_DAC, (mode ? STEREO_DAC : MONO_DAC));
}
