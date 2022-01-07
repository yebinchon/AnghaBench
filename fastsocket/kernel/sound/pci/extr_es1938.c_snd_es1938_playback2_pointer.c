
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct es1938 {int dma1_size; size_t dma1_start; size_t dma1_shift; } ;
typedef size_t snd_pcm_uframes_t ;


 int DMAADDR ;
 int DMACOUNT ;
 int SLDM_REG (struct es1938*,int ) ;
 size_t inl (int ) ;
 size_t inw (int ) ;
 struct es1938* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_es1938_playback2_pointer(struct snd_pcm_substream *substream)
{
 struct es1938 *chip = snd_pcm_substream_chip(substream);
 size_t ptr;
 size_t old, new;


 old = inw(SLDM_REG(chip, DMACOUNT));
 while ((new = inw(SLDM_REG(chip, DMACOUNT))) != old)
  old = new;
 ptr = chip->dma1_size - 1 - new;



 return ptr >> chip->dma1_shift;
}
