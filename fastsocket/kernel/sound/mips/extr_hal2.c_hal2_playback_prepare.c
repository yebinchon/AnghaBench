
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; int channels; } ;
struct TYPE_2__ {int sw_buffer_size; int hw_buffer_size; } ;
struct hal2_codec {struct snd_pcm_substream* substream; TYPE_1__ pcm_indirect; int sample_rate; int voices; } ;
struct snd_hal2 {struct hal2_codec dac; } ;


 int H2_BUF_SIZE ;
 int hal2_compute_rate (struct hal2_codec*,int ) ;
 int hal2_setup_dac (struct snd_hal2*) ;
 int memset (TYPE_1__*,int ,int) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 struct snd_hal2* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int hal2_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_hal2 *hal2 = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct hal2_codec *dac = &hal2->dac;

 dac->voices = runtime->channels;
 dac->sample_rate = hal2_compute_rate(dac, runtime->rate);
 memset(&dac->pcm_indirect, 0, sizeof(dac->pcm_indirect));
 dac->pcm_indirect.hw_buffer_size = H2_BUF_SIZE;
 dac->pcm_indirect.sw_buffer_size = snd_pcm_lib_buffer_bytes(substream);
 dac->substream = substream;
 hal2_setup_dac(hal2);
 return 0;
}
