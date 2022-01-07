
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {unsigned long pgoff; int page; } ;
struct vm_area_struct {scalar_t__ vm_private_data; } ;
struct usX2Ydev {scalar_t__ hwdep_pcm_shm; } ;


 unsigned long PAGE_SHIFT ;
 int get_page (int ) ;
 int virt_to_page (void*) ;

__attribute__((used)) static int snd_usX2Y_hwdep_pcm_vm_fault(struct vm_area_struct *area,
     struct vm_fault *vmf)
{
 unsigned long offset;
 void *vaddr;

 offset = vmf->pgoff << PAGE_SHIFT;
 vaddr = (char*)((struct usX2Ydev *)area->vm_private_data)->hwdep_pcm_shm + offset;
 vmf->page = virt_to_page(vaddr);
 get_page(vmf->page);
 return 0;
}
