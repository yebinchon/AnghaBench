
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {scalar_t__ mode; int p_dma_size; int dma8; } ;
struct snd_pcm_substream {int runtime; } ;
typedef int snd_pcm_uframes_t ;


 scalar_t__ SB_MODE_PLAYBACK_8 ;
 int bytes_to_frames (int ,size_t) ;
 size_t snd_dma_pointer (int ,int ) ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_sb8_playback_pointer(struct snd_pcm_substream *substream)
{
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 size_t ptr;

 if (chip->mode != SB_MODE_PLAYBACK_8)
  return 0;
 ptr = snd_dma_pointer(chip->dma8, chip->p_dma_size);
 return bytes_to_frames(substream->runtime, ptr);
}
