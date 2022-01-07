
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int supported_rec_devices; int model; int recmask; int submodel; } ;
typedef TYPE_1__ sb_devc ;


 unsigned char ALS007_CD ;
 unsigned char ALS007_LINE ;
 unsigned char ALS007_MIC ;
 int ALS007_RECORD_SRC ;
 unsigned char ALS007_SYNTH ;





 int SB16_IMASK_L ;
 int SB16_IMASK_R ;




 int SOUND_MIXER_NRDEVICES ;
 int SRC__CD ;
 int SRC__LINE ;
 int SRC__MIC ;
 int SUBMDL_ALS007 ;
 int ess_set_recmask (TYPE_1__*,int*) ;
 unsigned char* sb16_recmasks_L ;
 unsigned char* sb16_recmasks_R ;
 int sb_setmixer (TYPE_1__*,int ,unsigned char) ;
 int set_recsrc (TYPE_1__*,int ) ;

__attribute__((used)) static int set_recmask(sb_devc * devc, int mask)
{
 int devmask, i;
 unsigned char regimageL, regimageR;

 devmask = mask & devc->supported_rec_devices;

 switch (devc->model)
 {
  case 133:
  case 136:
  case 135:
  case 132:
   if (devc->model == 136 && ess_set_recmask (devc, &devmask)) {
    break;
   };
   if (devmask != 129 &&
    devmask != 130 &&
    devmask != 131)
   {




    devmask &= ~devc->recmask;
   }
   if (devmask != 129 &&
    devmask != 130 &&
    devmask != 131)
   {




    devmask = 129;
   }
   if (devmask ^ devc->recmask)


   {
    switch (devmask)
    {
     case 129:
      set_recsrc(devc, SRC__MIC);
      break;

     case 130:
      set_recsrc(devc, SRC__LINE);
      break;

     case 131:
      set_recsrc(devc, SRC__CD);
      break;

     default:
      set_recsrc(devc, SRC__MIC);
    }
   }
   break;

  case 134:
   if (!devmask)
    devmask = 129;

   if (devc->submodel == SUBMDL_ALS007)
   {
    switch (devmask)
    {
     case 130:
      sb_setmixer(devc, ALS007_RECORD_SRC, ALS007_LINE);
      break;
     case 131:
      sb_setmixer(devc, ALS007_RECORD_SRC, ALS007_CD);
      break;
     case 128:
      sb_setmixer(devc, ALS007_RECORD_SRC, ALS007_SYNTH);
      break;
     default:
      sb_setmixer(devc, ALS007_RECORD_SRC, ALS007_MIC);
      break;
    }
   }
   else
   {
    regimageL = regimageR = 0;
    for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
    {
     if ((1 << i) & devmask)
     {
      regimageL |= sb16_recmasks_L[i];
      regimageR |= sb16_recmasks_R[i];
     }
     sb_setmixer (devc, SB16_IMASK_L, regimageL);
     sb_setmixer (devc, SB16_IMASK_R, regimageR);
    }
   }
   break;
 }
 devc->recmask = devmask;
 return devc->recmask;
}
