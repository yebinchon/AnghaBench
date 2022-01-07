
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNDRV_PCM_FORMAT_A_LAW ;
 int SNDRV_PCM_FORMAT_FLOAT ;
 int SNDRV_PCM_FORMAT_IEC958_SUBFRAME ;
 int SNDRV_PCM_FORMAT_IMA_ADPCM ;
 int SNDRV_PCM_FORMAT_MPEG ;
 int SNDRV_PCM_FORMAT_MU_LAW ;
 int SNDRV_PCM_FORMAT_S16_BE ;
 int SNDRV_PCM_FORMAT_S16_LE ;
 int SNDRV_PCM_FORMAT_S24_3LE ;
 int SNDRV_PCM_FORMAT_S24_BE ;
 int SNDRV_PCM_FORMAT_S24_LE ;
 int SNDRV_PCM_FORMAT_S32_BE ;
 int SNDRV_PCM_FORMAT_S32_LE ;
 int SNDRV_PCM_FORMAT_S8 ;
 int SNDRV_PCM_FORMAT_U16_BE ;
 int SNDRV_PCM_FORMAT_U16_LE ;
 int SNDRV_PCM_FORMAT_U8 ;

__attribute__((used)) static int snd_pcm_oss_format_from(int format)
{
 switch (format) {
 case 140: return SNDRV_PCM_FORMAT_MU_LAW;
 case 144: return SNDRV_PCM_FORMAT_A_LAW;
 case 142: return SNDRV_PCM_FORMAT_IMA_ADPCM;
 case 128: return SNDRV_PCM_FORMAT_U8;
 case 138: return SNDRV_PCM_FORMAT_S16_LE;
 case 139: return SNDRV_PCM_FORMAT_S16_BE;
 case 132: return SNDRV_PCM_FORMAT_S8;
 case 129: return SNDRV_PCM_FORMAT_U16_LE;
 case 130: return SNDRV_PCM_FORMAT_U16_BE;
 case 141: return SNDRV_PCM_FORMAT_MPEG;
 case 133: return SNDRV_PCM_FORMAT_S32_LE;
 case 134: return SNDRV_PCM_FORMAT_S32_BE;
 case 136: return SNDRV_PCM_FORMAT_S24_LE;
 case 137: return SNDRV_PCM_FORMAT_S24_BE;
 case 135: return SNDRV_PCM_FORMAT_S24_3LE;
 case 143: return SNDRV_PCM_FORMAT_FLOAT;
 case 131: return SNDRV_PCM_FORMAT_IEC958_SUBFRAME;
 default: return SNDRV_PCM_FORMAT_U8;
 }
}
