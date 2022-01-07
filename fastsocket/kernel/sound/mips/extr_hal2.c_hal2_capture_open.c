
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct hal2_codec {int dummy; } ;
struct snd_hal2 {struct hal2_codec adc; } ;


 int hal2_alloc_dmabuf (struct hal2_codec*) ;
 int hal2_pcm_hw ;
 struct snd_hal2* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int hal2_capture_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_hal2 *hal2 = snd_pcm_substream_chip(substream);
 struct hal2_codec *adc = &hal2->adc;
 int err;

 runtime->hw = hal2_pcm_hw;

 err = hal2_alloc_dmabuf(adc);
 if (err)
  return err;
 return 0;
}
