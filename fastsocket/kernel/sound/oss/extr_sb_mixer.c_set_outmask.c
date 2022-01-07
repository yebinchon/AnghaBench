
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int supported_out_devices; int model; int outmask; int submodel; } ;
typedef TYPE_1__ sb_devc ;



 int SB16_OMASK ;
 int SOUND_MIXER_NRDEVICES ;
 int SUBMDL_ALS007 ;
 unsigned char* sb16_recmasks_L ;
 unsigned char* sb16_recmasks_R ;
 int sb_setmixer (TYPE_1__*,int ,unsigned char) ;

__attribute__((used)) static int set_outmask(sb_devc * devc, int mask)
{
 int devmask, i;
 unsigned char regimage;

 devmask = mask & devc->supported_out_devices;

 switch (devc->model)
 {
  case 128:
   if (devc->submodel == SUBMDL_ALS007)
    break;
   else
   {
    regimage = 0;
    for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
    {
     if ((1 << i) & devmask)
     {
      regimage |= (sb16_recmasks_L[i] | sb16_recmasks_R[i]);
     }
     sb_setmixer (devc, SB16_OMASK, regimage);
    }
   }
   break;
  default:
   break;
 }

 devc->outmask = devmask;
 return devc->outmask;
}
