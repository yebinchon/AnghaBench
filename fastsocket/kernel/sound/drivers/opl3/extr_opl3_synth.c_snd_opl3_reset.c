
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {scalar_t__ hardware; int max_voices; scalar_t__ rhythm; int (* command ) (struct snd_opl3*,unsigned short,int) ;int fm_mode; } ;


 int MAX_OPL2_VOICES ;
 int MAX_OPL3_VOICES ;
 int OPL3_ENABLE_WAVE_SELECT ;
 scalar_t__ OPL3_HW_OPL3 ;
 unsigned short OPL3_LEFT ;
 unsigned char OPL3_REG_KEYON_BLOCK ;
 unsigned short OPL3_REG_KSL_LEVEL ;
 unsigned short OPL3_REG_PERCUSSION ;
 unsigned short OPL3_REG_TEST ;
 unsigned short OPL3_RIGHT ;
 int OPL3_TOTAL_LEVEL_MASK ;
 int SNDRV_DM_FM_MODE_OPL2 ;
 unsigned short** snd_opl3_regmap ;
 int stub1 (struct snd_opl3*,unsigned short,int) ;
 int stub2 (struct snd_opl3*,unsigned short,int) ;
 int stub3 (struct snd_opl3*,unsigned short,int) ;
 int stub4 (struct snd_opl3*,unsigned short,int) ;
 int stub5 (struct snd_opl3*,unsigned short,int) ;

void snd_opl3_reset(struct snd_opl3 * opl3)
{
 unsigned short opl3_reg;

 unsigned short reg_side;
 unsigned char voice_offset;

 int max_voices, i;

 max_voices = (opl3->hardware < OPL3_HW_OPL3) ?
  MAX_OPL2_VOICES : MAX_OPL3_VOICES;

 for (i = 0; i < max_voices; i++) {

  if (i < MAX_OPL2_VOICES) {

   reg_side = OPL3_LEFT;
   voice_offset = i;
  } else {

   reg_side = OPL3_RIGHT;
   voice_offset = i - MAX_OPL2_VOICES;
  }
  opl3_reg = reg_side | (OPL3_REG_KSL_LEVEL + snd_opl3_regmap[voice_offset][0]);
  opl3->command(opl3, opl3_reg, OPL3_TOTAL_LEVEL_MASK);
  opl3_reg = reg_side | (OPL3_REG_KSL_LEVEL + snd_opl3_regmap[voice_offset][1]);
  opl3->command(opl3, opl3_reg, OPL3_TOTAL_LEVEL_MASK);

  opl3_reg = reg_side | (OPL3_REG_KEYON_BLOCK + voice_offset);
  opl3->command(opl3, opl3_reg, 0x00);
 }

 opl3->max_voices = MAX_OPL2_VOICES;
 opl3->fm_mode = SNDRV_DM_FM_MODE_OPL2;

 opl3->command(opl3, OPL3_LEFT | OPL3_REG_TEST, OPL3_ENABLE_WAVE_SELECT);
 opl3->command(opl3, OPL3_LEFT | OPL3_REG_PERCUSSION, 0x00);
 opl3->rhythm = 0;
}
