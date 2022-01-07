
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct aaci_runtime {int cr; scalar_t__ pcm_open; int pcm; } ;
struct TYPE_2__ {struct aaci_runtime* private_data; } ;


 int CR_EN ;
 int WARN_ON (int) ;
 int devdma_hw_free (int *,struct snd_pcm_substream*) ;
 int snd_ac97_pcm_close (int ) ;

__attribute__((used)) static int aaci_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct aaci_runtime *aacirun = substream->runtime->private_data;




 WARN_ON(aacirun->cr & CR_EN);

 if (aacirun->pcm_open)
  snd_ac97_pcm_close(aacirun->pcm);
 aacirun->pcm_open = 0;




 devdma_hw_free(((void*)0), substream);

 return 0;
}
