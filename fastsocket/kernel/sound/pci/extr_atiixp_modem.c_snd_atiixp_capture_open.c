
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct atiixp_modem {int * dmas; } ;


 size_t ATI_DMA_CAPTURE ;
 int snd_atiixp_pcm_open (struct snd_pcm_substream*,int *,int) ;
 struct atiixp_modem* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_atiixp_capture_open(struct snd_pcm_substream *substream)
{
 struct atiixp_modem *chip = snd_pcm_substream_chip(substream);
 return snd_atiixp_pcm_open(substream, &chip->dmas[ATI_DMA_CAPTURE], 1);
}
