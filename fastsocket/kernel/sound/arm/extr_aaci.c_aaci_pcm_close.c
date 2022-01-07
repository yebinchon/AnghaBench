
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; struct aaci* private_data; } ;
struct aaci_runtime {int cr; int * substream; } ;
struct aaci {TYPE_2__* dev; } ;
struct TYPE_4__ {int * irq; } ;
struct TYPE_3__ {struct aaci_runtime* private_data; } ;


 int CR_EN ;
 int WARN_ON (int) ;
 int free_irq (int ,struct aaci*) ;

__attribute__((used)) static int aaci_pcm_close(struct snd_pcm_substream *substream)
{
 struct aaci *aaci = substream->private_data;
 struct aaci_runtime *aacirun = substream->runtime->private_data;

 WARN_ON(aacirun->cr & CR_EN);

 aacirun->substream = ((void*)0);
 free_irq(aaci->dev->irq[0], aaci);

 return 0;
}
