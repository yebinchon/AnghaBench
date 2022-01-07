
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; int channels; } ;
struct TYPE_2__ {int hw_buffer_size; int hw_queue_size; int sw_buffer_size; } ;
struct hal2_codec {struct snd_pcm_substream* substream; TYPE_1__ pcm_indirect; int sample_rate; int voices; } ;
struct snd_hal2 {struct hal2_codec adc; } ;


 int H2_BUF_SIZE ;
 int hal2_compute_rate (struct hal2_codec*,int ) ;
 int hal2_setup_adc (struct snd_hal2*) ;
 int memset (TYPE_1__*,int ,int) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 struct snd_hal2* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int hal2_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_hal2 *hal2 = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct hal2_codec *adc = &hal2->adc;

 adc->voices = runtime->channels;
 adc->sample_rate = hal2_compute_rate(adc, runtime->rate);
 memset(&adc->pcm_indirect, 0, sizeof(adc->pcm_indirect));
 adc->pcm_indirect.hw_buffer_size = H2_BUF_SIZE;
 adc->pcm_indirect.hw_queue_size = H2_BUF_SIZE / 2;
 adc->pcm_indirect.sw_buffer_size = snd_pcm_lib_buffer_bytes(substream);
 adc->substream = substream;
 hal2_setup_adc(hal2);
 return 0;
}
