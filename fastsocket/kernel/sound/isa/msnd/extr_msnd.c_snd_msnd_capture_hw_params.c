
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_msnd {int capture_sample_rate; int capture_channels; int capture_sample_size; void* mappedbase; } ;


 int DAQDS__size ;
 int DAQDS_wChannels ;
 int DAQDS_wSampleRate ;
 int DAQDS_wSampleSize ;
 int DARQ_DATA_BUFF ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_pcm_format_width (int ) ;
 struct snd_msnd* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int writew (int ,void*) ;

__attribute__((used)) static int snd_msnd_capture_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params)
{
 int i;
 struct snd_msnd *chip = snd_pcm_substream_chip(substream);
 void *pDAQ = chip->mappedbase + DARQ_DATA_BUFF;

 chip->capture_sample_size = snd_pcm_format_width(params_format(params));
 chip->capture_channels = params_channels(params);
 chip->capture_sample_rate = params_rate(params);

 for (i = 0; i < 3; ++i, pDAQ += DAQDS__size) {
  writew(chip->capture_sample_size, pDAQ + DAQDS_wSampleSize);
  writew(chip->capture_channels, pDAQ + DAQDS_wChannels);
  writew(chip->capture_sample_rate, pDAQ + DAQDS_wSampleRate);
 }
 return 0;
}
