
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
struct TYPE_9__ {TYPE_1__ hw; } ;
typedef TYPE_2__ wavnc_info ;


 int DEBUG_MIXER ;
 int SOUND_MIXER_NRDEVICES ;
 int WACMD_RST_MIXER ;
 int WACMD_SET_MIXER ;
 int debug_flg ;
 int printk (char*,int ) ;
 int waveartist_cmd1 (TYPE_2__*,int ) ;
 int waveartist_cmd3 (TYPE_2__*,int ,int,int) ;
 int waveartist_mixer_update (TYPE_2__*,int) ;
 int waveartist_set_recmask (TYPE_2__*,int ) ;

__attribute__((used)) static void
waveartist_mixer_reset(wavnc_info *devc)
{
 int i;

 if (debug_flg & DEBUG_MIXER)
  printk("%s: mixer_reset\n", devc->hw.name);




 waveartist_cmd1(devc, WACMD_RST_MIXER);





 waveartist_cmd3(devc, WACMD_SET_MIXER, 0x9800, 0xa836);




 waveartist_cmd3(devc, WACMD_SET_MIXER, 0x4c00, 0x8c00);




 waveartist_cmd3(devc, WACMD_SET_MIXER, 0x2801, 0x6800);




 waveartist_set_recmask(devc, 0);

 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
  waveartist_mixer_update(devc, i);
}
