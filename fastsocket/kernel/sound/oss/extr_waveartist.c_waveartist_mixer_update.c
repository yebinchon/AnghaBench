
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* levels; } ;
typedef TYPE_1__ wavnc_info ;
struct mix_ent {int reg_l; int reg_r; unsigned int max; unsigned int shift; } ;


 unsigned int SCALE (unsigned int,int) ;

 int SOUND_MIXER_PHONEOUT ;

 int SOUND_MIXER_VOLUME ;
 int WACMD_GET_LEVEL ;
 int WACMD_SET_LEVEL ;
 int WACMD_SET_MIXER ;
 scalar_t__ machine_is_netwinder () ;
 struct mix_ent* mix_devs ;
 unsigned int waveartist_cmd1_r (TYPE_1__*,int) ;
 int waveartist_cmd3 (TYPE_1__*,int,unsigned int,unsigned int) ;

__attribute__((used)) static void
waveartist_mixer_update(wavnc_info *devc, int whichDev)
{
 unsigned int lev_left, lev_right;

 lev_left = devc->levels[whichDev] & 0xff;
 lev_right = devc->levels[whichDev] >> 8;

 if (lev_left > 100)
  lev_left = 100;
 if (lev_right > 100)
  lev_right = 100;



 if (machine_is_netwinder() && whichDev == SOUND_MIXER_PHONEOUT)
  whichDev = SOUND_MIXER_VOLUME;

 if (mix_devs[whichDev].reg_l || mix_devs[whichDev].reg_r) {
  const struct mix_ent *mix = mix_devs + whichDev;
  unsigned int mask, left, right;

  mask = mix->max << mix->shift;
  lev_left = ((lev_left) * (mix->max) / 100) << mix->shift;
  lev_right = ((lev_right) * (mix->max) / 100) << mix->shift;


  left = waveartist_cmd1_r(devc, WACMD_GET_LEVEL |
            mix->reg_l << 8);


  right = waveartist_cmd1_r(devc, WACMD_GET_LEVEL |
      mix->reg_r << 8);

  left = (left & ~mask) | (lev_left & mask);
  right = (right & ~mask) | (lev_right & mask);


  waveartist_cmd3(devc, WACMD_SET_MIXER, left, right);
 } else {
  switch(whichDev) {
  case 129:
   waveartist_cmd3(devc, WACMD_SET_LEVEL,
     ((lev_left) * (32767) / 100),
     ((lev_right) * (32767) / 100));
   break;

  case 128:
   waveartist_cmd3(devc, 0x0100 | WACMD_SET_LEVEL,
     ((lev_left) * (32767) / 100),
     ((lev_right) * (32767) / 100));
   break;
  }
 }
}
