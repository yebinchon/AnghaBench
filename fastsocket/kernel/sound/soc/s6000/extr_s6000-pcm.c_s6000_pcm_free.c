
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm {struct snd_soc_pcm_runtime* private_data; } ;
struct s6000_pcm_dma_params {int irq; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {struct s6000_pcm_dma_params* dma_data; } ;


 int free_irq (int ,struct snd_pcm*) ;
 int snd_pcm_lib_preallocate_free_for_all (struct snd_pcm*) ;

__attribute__((used)) static void s6000_pcm_free(struct snd_pcm *pcm)
{
 struct snd_soc_pcm_runtime *runtime = pcm->private_data;
 struct s6000_pcm_dma_params *params = runtime->dai->cpu_dai->dma_data;

 free_irq(params->irq, pcm);
 snd_pcm_lib_preallocate_free_for_all(pcm);
}
