
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int devdma_mmap (int *,struct snd_pcm_substream*,struct vm_area_struct*) ;

__attribute__((used)) static int aaci_pcm_mmap(struct snd_pcm_substream *substream, struct vm_area_struct *vma)
{
 return devdma_mmap(((void*)0), substream, vma);
}
