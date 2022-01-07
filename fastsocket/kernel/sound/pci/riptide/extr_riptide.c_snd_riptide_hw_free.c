
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_riptide {struct cmdif* cif; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int * area; } ;
struct pcmhw {int source; int* intdec; TYPE_1__ sgdlist; int * lbuspath; } ;
struct cmdif {int dummy; } ;


 int freelbuspath (struct cmdif*,int,int *) ;
 struct pcmhw* get_pcmhwdev (struct snd_pcm_substream*) ;
 int snd_dma_free_pages (TYPE_1__*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_riptide* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_riptide_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_riptide *chip = snd_pcm_substream_chip(substream);
 struct pcmhw *data = get_pcmhwdev(substream);
 struct cmdif *cif = chip->cif;

 if (cif && data) {
  if (data->lbuspath)
   freelbuspath(cif, data->source, data->lbuspath);
  data->lbuspath = ((void*)0);
  data->source = 0xff;
  data->intdec[0] = 0xff;
  data->intdec[1] = 0xff;

  if (data->sgdlist.area) {
   snd_dma_free_pages(&data->sgdlist);
   data->sgdlist.area = ((void*)0);
  }
 }
 return snd_pcm_lib_free_pages(substream);
}
