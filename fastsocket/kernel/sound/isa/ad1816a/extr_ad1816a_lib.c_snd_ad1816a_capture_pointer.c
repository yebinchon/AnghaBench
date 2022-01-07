
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct snd_ad1816a {int mode; int c_dma_size; int dma2; } ;
typedef int snd_pcm_uframes_t ;


 int AD1816A_MODE_CAPTURE ;
 int bytes_to_frames (int ,size_t) ;
 size_t snd_dma_pointer (int ,int ) ;
 struct snd_ad1816a* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_ad1816a_capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_ad1816a *chip = snd_pcm_substream_chip(substream);
 size_t ptr;
 if (!(chip->mode & AD1816A_MODE_CAPTURE))
  return 0;
 ptr = snd_dma_pointer(chip->dma2, chip->c_dma_size);
 return bytes_to_frames(substream->runtime, ptr);
}
