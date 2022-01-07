
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct parsed_hdmi_eld {int sad_count; struct cea_sad* sad; } ;
struct hda_pcm_stream {int rates; void* channels_max; void* maxbps; int formats; } ;
struct cea_sad {int rates; unsigned int channels; scalar_t__ format; int sample_bits; } ;


 int AC_SUPPCM_BITS_20 ;
 int AC_SUPPCM_BITS_24 ;
 scalar_t__ AUDIO_CODING_TYPE_LPCM ;
 int SNDRV_PCM_FMTBIT_S16_LE ;
 int SNDRV_PCM_FMTBIT_S32_LE ;
 int SNDRV_PCM_RATE_32000 ;
 int SNDRV_PCM_RATE_44100 ;
 int SNDRV_PCM_RATE_48000 ;
 void* min (void*,unsigned int) ;

void snd_hdmi_eld_update_pcm_info(struct parsed_hdmi_eld *e,
         struct hda_pcm_stream *hinfo)
{
 u32 rates;
 u64 formats;
 unsigned int maxbps;
 unsigned int channels_max;
 int i;




 rates = SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_44100 |
  SNDRV_PCM_RATE_48000;
 formats = SNDRV_PCM_FMTBIT_S16_LE;
 maxbps = 16;
 channels_max = 2;
 for (i = 0; i < e->sad_count; i++) {
  struct cea_sad *a = &e->sad[i];
  rates |= a->rates;
  if (a->channels > channels_max)
   channels_max = a->channels;
  if (a->format == AUDIO_CODING_TYPE_LPCM) {
   if (a->sample_bits & AC_SUPPCM_BITS_20) {
    formats |= SNDRV_PCM_FMTBIT_S32_LE;
    if (maxbps < 20)
     maxbps = 20;
   }
   if (a->sample_bits & AC_SUPPCM_BITS_24) {
    formats |= SNDRV_PCM_FMTBIT_S32_LE;
    if (maxbps < 24)
     maxbps = 24;
   }
  }
 }


 hinfo->rates &= rates;
 hinfo->formats &= formats;
 hinfo->maxbps = min(hinfo->maxbps, maxbps);
 hinfo->channels_max = min(hinfo->channels_max, channels_max);
}
