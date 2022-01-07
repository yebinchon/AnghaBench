
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct snd_es1688 {int trigger_value; int dma_size; int dma8; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (int ,size_t) ;
 size_t snd_dma_pointer (int ,int ) ;
 struct snd_es1688* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_es1688_capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_es1688 *chip = snd_pcm_substream_chip(substream);
 size_t ptr;

 if (chip->trigger_value != 0x0f)
  return 0;
 ptr = snd_dma_pointer(chip->dma8, chip->dma_size);
 return bytes_to_frames(substream->runtime, ptr);
}
