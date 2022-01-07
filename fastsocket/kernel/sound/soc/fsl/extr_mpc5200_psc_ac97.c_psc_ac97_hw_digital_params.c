
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct psc_dma* private_data; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct psc_dma {TYPE_1__* psc_regs; } ;
struct TYPE_2__ {int ac97_slots; } ;


 int out_be32 (int *,int) ;
 int params_channels (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int psc_ac97_hw_digital_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *cpu_dai)
{
 struct psc_dma *psc_dma = cpu_dai->private_data;

 if (params_channels(params) == 1)
  out_be32(&psc_dma->psc_regs->ac97_slots, 0x01000000);
 else
  out_be32(&psc_dma->psc_regs->ac97_slots, 0x03000000);

 return 0;
}
