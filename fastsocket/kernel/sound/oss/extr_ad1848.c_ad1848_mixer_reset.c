
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* chip_name; int* mixer_reroute; int model; int supported_devices; int orig_devices; int* levels; int mixer_output_port; int lock; int supported_rec_devices; int orig_rec_devices; int * mix_devices; } ;
typedef TYPE_1__ ad1848_info ;


 int AUDIO_HEADPHONE ;
 int AUDIO_LINE_OUT ;
 int AUDIO_SPEAKER ;
 int C930_MIXER_DEVICES ;
 int MODE1_MIXER_DEVICES ;
 int MODE1_REC_DEVICES ;
 int MODE2_MIXER_DEVICES ;
 void* MODE3_MIXER_DEVICES ;
 int SOUND_MASK_MIC ;
 int SOUND_MIXER_NRDEVICES ;
 int SPRO_MIXER_DEVICES ;
 int SPRO_REC_DEVICES ;
 int * ad1848_mix_devices ;
 int ad1848_mixer_set (TYPE_1__*,int,int) ;
 int ad1848_set_recmask (TYPE_1__*,int ) ;
 int ad_read (TYPE_1__*,int) ;
 int ad_write (TYPE_1__*,int,int) ;
 int * c930_mix_devices ;
 int * cs42xb_mix_devices ;
 int default_mixer_levels ;
 int * iwave_mix_devices ;
 int* load_mixer_volumes (char*,int ,int) ;
 int nr_ad1848_devs ;
 scalar_t__ soundpro ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,char*,int) ;
 int * spro_mix_devices ;

__attribute__((used)) static void ad1848_mixer_reset(ad1848_info * devc)
{
 int i;
 char name[32];
 unsigned long flags;

 devc->mix_devices = &(ad1848_mix_devices[0]);

 sprintf(name, "%s_%d", devc->chip_name, nr_ad1848_devs);

 for (i = 0; i < 32; i++)
  devc->mixer_reroute[i] = i;

 devc->supported_rec_devices = MODE1_REC_DEVICES;

 switch (devc->model)
 {
  case 136:
  case 135:
  case 139:
  case 138:
   devc->supported_devices = MODE2_MIXER_DEVICES;
   break;

  case 129:
   devc->supported_devices = C930_MIXER_DEVICES;
   devc->mix_devices = &(c930_mix_devices[0]);
   break;

  case 128:
   devc->supported_devices = MODE3_MIXER_DEVICES;
   devc->mix_devices = &(iwave_mix_devices[0]);
   break;

  case 130:
  case 131:
   devc->mix_devices = &(cs42xb_mix_devices[0]);
   devc->supported_devices = MODE3_MIXER_DEVICES;
   break;
  case 134:
  case 133:
  case 132:
   devc->supported_devices = MODE3_MIXER_DEVICES;
   break;

  case 137:
   if (soundpro) {
    devc->supported_devices = SPRO_MIXER_DEVICES;
    devc->supported_rec_devices = SPRO_REC_DEVICES;
    devc->mix_devices = &(spro_mix_devices[0]);
    break;
   }

  default:
   devc->supported_devices = MODE1_MIXER_DEVICES;
 }

 devc->orig_devices = devc->supported_devices;
 devc->orig_rec_devices = devc->supported_rec_devices;

 devc->levels = load_mixer_volumes(name, default_mixer_levels, 1);

 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
 {
  if (devc->supported_devices & (1 << i))
   ad1848_mixer_set(devc, i, devc->levels[i]);
 }

 ad1848_set_recmask(devc, SOUND_MASK_MIC);

 devc->mixer_output_port = devc->levels[31] | AUDIO_HEADPHONE | AUDIO_LINE_OUT;

 spin_lock_irqsave(&devc->lock,flags);
 if (!soundpro) {
  if (devc->mixer_output_port & AUDIO_SPEAKER)
   ad_write(devc, 26, ad_read(devc, 26) & ~0x40);
  else
   ad_write(devc, 26, ad_read(devc, 26) | 0x40);
 } else {





  ad_write(devc, 16, 0x60);
 }
 spin_unlock_irqrestore(&devc->lock,flags);
}
