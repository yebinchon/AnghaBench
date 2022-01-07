
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* SCALE (unsigned int,unsigned int) ;


 void* vidc_audio_volume_l ;
 void* vidc_audio_volume_r ;
 unsigned int* vidc_level_l ;
 unsigned int* vidc_level_r ;

__attribute__((used)) static void
vidc_mixer_set(int mdev, unsigned int level)
{
 unsigned int lev_l = level & 0x007f;
 unsigned int lev_r = (level & 0x7f00) >> 8;
 unsigned int mlev_l, mlev_r;

 if (lev_l > 100)
  lev_l = 100;
 if (lev_r > 100)
  lev_r = 100;



 mlev_l = vidc_level_l[128];
 mlev_r = vidc_level_r[128];

 switch (mdev) {
 case 128:
 case 129:
  vidc_level_l[mdev] = lev_l;
  vidc_level_r[mdev] = lev_r;

  vidc_audio_volume_l = ((lev_l) * (mlev_l) * 65536 / 10000);
  vidc_audio_volume_r = ((lev_r) * (mlev_r) * 65536 / 10000);

  break;
 }

}
