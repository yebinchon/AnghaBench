
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct snd_pcm_substream {TYPE_2__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; int dma_addr; int dma_area; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 int dma_mmap_writecombine (int ,struct vm_area_struct*,int ,int ,int ) ;

__attribute__((used)) static int davinci_pcm_mmap(struct snd_pcm_substream *substream,
       struct vm_area_struct *vma)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 return dma_mmap_writecombine(substream->pcm->card->dev, vma,
         runtime->dma_area,
         runtime->dma_addr,
         runtime->dma_bytes);
}
