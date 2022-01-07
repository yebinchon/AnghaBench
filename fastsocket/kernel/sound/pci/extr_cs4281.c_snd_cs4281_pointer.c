
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ buffer_size; struct cs4281_dma* private_data; } ;
struct cs4281_dma {int regDCC; } ;
struct cs4281 {int dummy; } ;
typedef scalar_t__ snd_pcm_uframes_t ;


 scalar_t__ snd_cs4281_peekBA0 (struct cs4281*,int ) ;
 struct cs4281* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_cs4281_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct cs4281_dma *dma = runtime->private_data;
 struct cs4281 *chip = snd_pcm_substream_chip(substream);






 return runtime->buffer_size -
        snd_cs4281_peekBA0(chip, dma->regDCC) - 1;
}
