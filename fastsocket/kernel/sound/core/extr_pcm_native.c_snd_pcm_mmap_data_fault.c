
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_fault {unsigned long pgoff; struct page* page; } ;
struct vm_area_struct {struct snd_pcm_substream* vm_private_data; } ;
struct snd_pcm_substream {TYPE_1__* ops; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {void* dma_area; int dma_bytes; } ;
struct page {int dummy; } ;
struct TYPE_2__ {struct page* (* page ) (struct snd_pcm_substream*,unsigned long) ;} ;


 size_t PAGE_ALIGN (int ) ;
 unsigned long PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 struct page* stub1 (struct snd_pcm_substream*,unsigned long) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static int snd_pcm_mmap_data_fault(struct vm_area_struct *area,
      struct vm_fault *vmf)
{
 struct snd_pcm_substream *substream = area->vm_private_data;
 struct snd_pcm_runtime *runtime;
 unsigned long offset;
 struct page * page;
 void *vaddr;
 size_t dma_bytes;

 if (substream == ((void*)0))
  return VM_FAULT_SIGBUS;
 runtime = substream->runtime;
 offset = vmf->pgoff << PAGE_SHIFT;
 dma_bytes = PAGE_ALIGN(runtime->dma_bytes);
 if (offset > dma_bytes - PAGE_SIZE)
  return VM_FAULT_SIGBUS;
 if (substream->ops->page) {
  page = substream->ops->page(substream, offset);
  if (!page)
   return VM_FAULT_SIGBUS;
 } else {
  vaddr = runtime->dma_area + offset;
  page = virt_to_page(vaddr);
 }
 get_page(page);
 vmf->page = page;
 return 0;
}
