
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_runtime {struct audiopipe* private_data; } ;
struct TYPE_2__ {scalar_t__ area; } ;
struct audiopipe {TYPE_1__ sgpage; } ;


 int kfree (struct audiopipe*) ;
 int snd_dma_free_pages (TYPE_1__*) ;

__attribute__((used)) static void audiopipe_free(struct snd_pcm_runtime *runtime)
{
 struct audiopipe *pipe = runtime->private_data;

 if (pipe->sgpage.area)
  snd_dma_free_pages(&pipe->sgpage);
 kfree(pipe);
}
