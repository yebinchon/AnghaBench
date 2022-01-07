
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu8000 {int chorus_mode; } ;
struct TYPE_2__ {int lfo_freq; int delay; int lfo_depth; int delay_offset; int feedback; } ;


 int EMU8000_HWCF4_WRITE (struct snd_emu8000*,int ) ;
 int EMU8000_HWCF5_WRITE (struct snd_emu8000*,int ) ;
 int EMU8000_HWCF6_WRITE (struct snd_emu8000*,int) ;
 int EMU8000_HWCF7_WRITE (struct snd_emu8000*,int) ;
 int EMU8000_INIT3_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_INIT4_WRITE (struct snd_emu8000*,int,int ) ;
 int SNDRV_EMU8000_CHORUS_NUMBERS ;
 int SNDRV_EMU8000_CHORUS_PREDEFINED ;
 int * chorus_defined ;
 TYPE_1__* chorus_parm ;

void
snd_emu8000_update_chorus_mode(struct snd_emu8000 *emu)
{
 int effect = emu->chorus_mode;
 if (effect < 0 || effect >= SNDRV_EMU8000_CHORUS_NUMBERS ||
     (effect >= SNDRV_EMU8000_CHORUS_PREDEFINED && !chorus_defined[effect]))
  return;
 EMU8000_INIT3_WRITE(emu, 0x09, chorus_parm[effect].feedback);
 EMU8000_INIT3_WRITE(emu, 0x0c, chorus_parm[effect].delay_offset);
 EMU8000_INIT4_WRITE(emu, 0x03, chorus_parm[effect].lfo_depth);
 EMU8000_HWCF4_WRITE(emu, chorus_parm[effect].delay);
 EMU8000_HWCF5_WRITE(emu, chorus_parm[effect].lfo_freq);
 EMU8000_HWCF6_WRITE(emu, 0x8000);
 EMU8000_HWCF7_WRITE(emu, 0x0000);
}
