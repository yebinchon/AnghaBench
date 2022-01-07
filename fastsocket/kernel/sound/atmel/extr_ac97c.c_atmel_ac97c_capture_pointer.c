
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ buffer_size; scalar_t__ dma_addr; } ;
struct TYPE_2__ {int rx_chan; } ;
struct atmel_ac97c {TYPE_1__ dma; } ;
typedef scalar_t__ snd_pcm_uframes_t ;


 scalar_t__ bytes_to_frames (struct snd_pcm_runtime*,unsigned long) ;
 unsigned long dw_dma_get_dst_addr (int ) ;
 struct atmel_ac97c* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t
atmel_ac97c_capture_pointer(struct snd_pcm_substream *substream)
{
 struct atmel_ac97c *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 snd_pcm_uframes_t frames;
 unsigned long bytes;

 bytes = dw_dma_get_dst_addr(chip->dma.rx_chan);
 bytes -= runtime->dma_addr;

 frames = bytes_to_frames(runtime, bytes);
 if (frames >= runtime->buffer_size)
  frames -= runtime->buffer_size;
 return frames;
}
