
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_emu8000 {int reverb_mode; } ;
struct TYPE_4__ {scalar_t__ port; int cmd; } ;
struct TYPE_3__ {int * parms; } ;


 scalar_t__ DATA1 ;
 int EMU8000_DATA1 (struct snd_emu8000*) ;
 int EMU8000_DATA2 (struct snd_emu8000*) ;
 int SNDRV_EMU8000_REVERB_NUMBERS ;
 int SNDRV_EMU8000_REVERB_PREDEFINED ;
 TYPE_2__* reverb_cmds ;
 int * reverb_defined ;
 TYPE_1__* reverb_parm ;
 int snd_emu8000_poke (struct snd_emu8000*,int,int ,int ) ;

void
snd_emu8000_update_reverb_mode(struct snd_emu8000 *emu)
{
 int effect = emu->reverb_mode;
 int i;

 if (effect < 0 || effect >= SNDRV_EMU8000_REVERB_NUMBERS ||
     (effect >= SNDRV_EMU8000_REVERB_PREDEFINED && !reverb_defined[effect]))
  return;
 for (i = 0; i < 28; i++) {
  int port;
  if (reverb_cmds[i].port == DATA1)
   port = EMU8000_DATA1(emu);
  else
   port = EMU8000_DATA2(emu);
  snd_emu8000_poke(emu, port, reverb_cmds[i].cmd, reverb_parm[effect].parms[i]);
 }
}
