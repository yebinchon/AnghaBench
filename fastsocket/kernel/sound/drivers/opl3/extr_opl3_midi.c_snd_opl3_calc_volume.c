
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel {int gm_volume; int gm_expression; } ;


 unsigned char OPL3_KSL_MASK ;
 unsigned char OPL3_TOTAL_LEVEL_MASK ;
 int* opl3_volume_table ;

void snd_opl3_calc_volume(unsigned char *volbyte, int vel,
     struct snd_midi_channel *chan)
{
 int oldvol, newvol, n;
 int volume;

 volume = (vel * chan->gm_volume * chan->gm_expression) / (127*127);
 if (volume > 127)
  volume = 127;

 oldvol = OPL3_TOTAL_LEVEL_MASK - (*volbyte & OPL3_TOTAL_LEVEL_MASK);

 newvol = opl3_volume_table[volume] + oldvol;
 if (newvol > OPL3_TOTAL_LEVEL_MASK)
  newvol = OPL3_TOTAL_LEVEL_MASK;
 else if (newvol < 0)
  newvol = 0;

 n = OPL3_TOTAL_LEVEL_MASK - (newvol & OPL3_TOTAL_LEVEL_MASK);

 *volbyte = (*volbyte & OPL3_KSL_MASK) | (n & OPL3_TOTAL_LEVEL_MASK);
}
