
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atiixp_modem {int dummy; } ;
struct atiixp_dma {int dummy; } ;
struct TYPE_2__ {struct atiixp_dma* private_data; } ;


 int atiixp_clear_dma_packets (struct atiixp_modem*,struct atiixp_dma*,struct snd_pcm_substream*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct atiixp_modem* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_atiixp_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct atiixp_modem *chip = snd_pcm_substream_chip(substream);
 struct atiixp_dma *dma = substream->runtime->private_data;

 atiixp_clear_dma_packets(chip, dma, substream);
 snd_pcm_lib_free_pages(substream);
 return 0;
}
