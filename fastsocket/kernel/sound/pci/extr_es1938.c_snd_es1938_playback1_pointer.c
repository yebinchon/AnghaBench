
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct es1938 {size_t dma2_size; size_t dma2_start; size_t dma2_shift; } ;
typedef size_t snd_pcm_uframes_t ;


 int AUDIO2DMAADDR ;
 int AUDIO2DMACOUNT ;
 int SLIO_REG (struct es1938*,int ) ;
 size_t inl (int ) ;
 size_t inw (int ) ;
 struct es1938* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_es1938_playback1_pointer(struct snd_pcm_substream *substream)
{
 struct es1938 *chip = snd_pcm_substream_chip(substream);
 size_t ptr;

 ptr = chip->dma2_size - inw(SLIO_REG(chip, AUDIO2DMACOUNT));



 return ptr >> chip->dma2_shift;
}
