
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNDRV_PCM_FORMAT_S32_LE ;
 unsigned int snd_hda_calc_stream_format (unsigned int,unsigned short,int ,int,int ) ;

__attribute__((used)) static int dma_convert_to_hda_format(
  unsigned int sample_rate,
  unsigned short channels,
  unsigned short *hda_format)
{
 unsigned int format_val;

 format_val = snd_hda_calc_stream_format(
    sample_rate,
    channels,
    SNDRV_PCM_FORMAT_S32_LE,
    32, 0);

 if (hda_format)
  *hda_format = (unsigned short)format_val;

 return 0;
}
