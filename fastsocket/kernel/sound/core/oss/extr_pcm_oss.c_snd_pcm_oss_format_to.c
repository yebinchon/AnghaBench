
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AFMT_A_LAW ;
 int AFMT_FLOAT ;
 int AFMT_IMA_ADPCM ;
 int AFMT_MPEG ;
 int AFMT_MU_LAW ;
 int AFMT_S16_BE ;
 int AFMT_S16_LE ;
 int AFMT_S24_BE ;
 int AFMT_S24_LE ;
 int AFMT_S24_PACKED ;
 int AFMT_S32_BE ;
 int AFMT_S32_LE ;
 int AFMT_S8 ;
 int AFMT_SPDIF_RAW ;
 int AFMT_U16_BE ;
 int AFMT_U16_LE ;
 int AFMT_U8 ;
 int EINVAL ;
__attribute__((used)) static int snd_pcm_oss_format_to(int format)
{
 switch (format) {
 case 139: return AFMT_MU_LAW;
 case 144: return AFMT_A_LAW;
 case 141: return AFMT_IMA_ADPCM;
 case 128: return AFMT_U8;
 case 137: return AFMT_S16_LE;
 case 138: return AFMT_S16_BE;
 case 131: return AFMT_S8;
 case 129: return AFMT_U16_LE;
 case 130: return AFMT_U16_BE;
 case 140: return AFMT_MPEG;
 case 132: return AFMT_S32_LE;
 case 133: return AFMT_S32_BE;
 case 134: return AFMT_S24_LE;
 case 135: return AFMT_S24_BE;
 case 136: return AFMT_S24_PACKED;
 case 143: return AFMT_FLOAT;
 case 142: return AFMT_SPDIF_RAW;
 default: return -EINVAL;
 }
}
