
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; scalar_t__ vm_pgoff; unsigned long vm_end; unsigned long vm_start; int vm_page_prot; } ;
struct file {scalar_t__ private_data; } ;
struct dmabuf {unsigned long buforder; int mapped; int rawbuf; } ;
struct au1550_state {int sem; struct dmabuf dma_adc; struct dmabuf dma_dac; } ;


 int EAGAIN ;
 int EINVAL ;
 unsigned long PAGE_SIZE ;
 int VM_IO ;
 int VM_READ ;
 int VM_WRITE ;
 int lock_kernel () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_to_pfn (int ) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,int ,unsigned long,int ) ;
 int unlock_kernel () ;
 int virt_to_page (int ) ;

__attribute__((used)) static int
au1550_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct au1550_state *s = (struct au1550_state *)file->private_data;
 struct dmabuf *db;
 unsigned long size;
 int ret = 0;

 lock_kernel();
 mutex_lock(&s->sem);
 if (vma->vm_flags & VM_WRITE)
  db = &s->dma_dac;
 else if (vma->vm_flags & VM_READ)
  db = &s->dma_adc;
 else {
  ret = -EINVAL;
  goto out;
 }
 if (vma->vm_pgoff != 0) {
  ret = -EINVAL;
  goto out;
 }
 size = vma->vm_end - vma->vm_start;
 if (size > (PAGE_SIZE << db->buforder)) {
  ret = -EINVAL;
  goto out;
 }
 if (remap_pfn_range(vma, vma->vm_start, page_to_pfn(virt_to_page(db->rawbuf)),
        size, vma->vm_page_prot)) {
  ret = -EAGAIN;
  goto out;
 }
 vma->vm_flags &= ~VM_IO;
 db->mapped = 1;
out:
 mutex_unlock(&s->sem);
 unlock_kernel();
 return ret;
}
