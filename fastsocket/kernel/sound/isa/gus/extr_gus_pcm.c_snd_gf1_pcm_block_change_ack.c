
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;
struct gus_pcm_private {int sleep; int dma_count; } ;


 int atomic_dec (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void snd_gf1_pcm_block_change_ack(struct snd_gus_card * gus, void *private_data)
{
 struct gus_pcm_private *pcmp = private_data;

 if (pcmp) {
  atomic_dec(&pcmp->dma_count);
  wake_up(&pcmp->sleep);
 }
}
