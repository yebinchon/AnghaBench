
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcxhr {int** digital_playback_active; int* aes_bits; int* analog_playback_active; int analog_capture_active; TYPE_1__* mgr; int * analog_capture_volume; void** digital_capture_volume; scalar_t__ nb_streams_capt; int * analog_playback_volume; void*** digital_playback_volume; scalar_t__ nb_streams_play; } ;
struct TYPE_2__ {scalar_t__ is_hr_stereo; } ;


 int HR222_LINE_CAPTURE_ZERO_LEVEL ;
 int HR222_LINE_PLAYBACK_ZERO_LEVEL ;
 int IEC958_AES0_PROFESSIONAL ;
 int IEC958_AES0_PRO_FS_48000 ;
 void* PCXHR_DIGITAL_ZERO_LEVEL ;
 int PCXHR_LINE_CAPTURE_ZERO_LEVEL ;
 int PCXHR_LINE_PLAYBACK_ZERO_LEVEL ;
 int PCXHR_PLAYBACK_STREAMS ;
 int hr222_update_analog_audio_level (struct snd_pcxhr*,int,int) ;
 int pcxhr_update_analog_audio_level (struct snd_pcxhr*,int,int) ;

__attribute__((used)) static void pcxhr_init_audio_levels(struct snd_pcxhr *chip)
{
 int i;

 for (i = 0; i < 2; i++) {
  if (chip->nb_streams_play) {
   int j;

   for (j = 0; j < PCXHR_PLAYBACK_STREAMS; j++) {
    chip->digital_playback_active[j][i] = 1;
    chip->digital_playback_volume[j][i] =
     PCXHR_DIGITAL_ZERO_LEVEL;
   }



   chip->aes_bits[0] = (IEC958_AES0_PROFESSIONAL |
          IEC958_AES0_PRO_FS_48000);
   if (chip->mgr->is_hr_stereo)
    hr222_update_analog_audio_level(chip, 0, i);
  }
  if (chip->nb_streams_capt) {

   chip->digital_capture_volume[i] =
    PCXHR_DIGITAL_ZERO_LEVEL;
   chip->analog_capture_active = 1;
   if (chip->mgr->is_hr_stereo)
    hr222_update_analog_audio_level(chip, 1, i);
  }
 }

 return;
}
