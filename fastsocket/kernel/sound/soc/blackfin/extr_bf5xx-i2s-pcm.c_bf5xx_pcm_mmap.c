
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {size_t vm_end; unsigned long vm_start; int vm_flags; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; } ;


 int VM_SHARED ;

__attribute__((used)) static int bf5xx_pcm_mmap(struct snd_pcm_substream *substream,
 struct vm_area_struct *vma)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 size_t size = vma->vm_end - vma->vm_start;
 vma->vm_start = (unsigned long)runtime->dma_area;
 vma->vm_end = vma->vm_start + size;
 vma->vm_flags |= VM_SHARED;

 return 0 ;
}
