
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int lock; } ;
typedef TYPE_2__ vortex_t ;
struct snd_pcm_substream {TYPE_1__* runtime; int pcm; } ;
struct TYPE_9__ {int dma; int type; int dir; int nr_ch; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_7__ {int * private_data; } ;


 scalar_t__ VORTEX_PCM_TYPE (int ) ;
 scalar_t__ VORTEX_PCM_WT ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 TYPE_2__* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vortex_adb_allocroute (TYPE_2__*,int ,int ,int ,int ) ;
 int vortex_wt_allocroute (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int snd_vortex_pcm_hw_free(struct snd_pcm_substream *substream)
{
 vortex_t *chip = snd_pcm_substream_chip(substream);
 stream_t *stream = (stream_t *) (substream->runtime->private_data);

 spin_lock_irq(&chip->lock);

 if (VORTEX_PCM_TYPE(substream->pcm) != VORTEX_PCM_WT) {
  if (stream != ((void*)0))
   vortex_adb_allocroute(chip, stream->dma,
           stream->nr_ch, stream->dir,
           stream->type);
 }

 else {
  if (stream != ((void*)0))
   vortex_wt_allocroute(chip, stream->dma, 0);
 }

 substream->runtime->private_data = ((void*)0);
 spin_unlock_irq(&chip->lock);

 return snd_pcm_lib_free_pages(substream);
}
