
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_struct {scalar_t__ addr; } ;
struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_end; int * vm_mm; } ;
struct omapfb_mem_region {int paddr; void* vaddr; scalar_t__ size; } ;
typedef int pgprot_t ;
struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int EAGAIN ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int VM_IOREMAP ;
 int dev_err (int ,char*) ;
 TYPE_2__ dispc ;
 struct vm_struct* get_vm_area (scalar_t__,int ) ;
 int init_mm ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,unsigned long,int,scalar_t__,int ) ;
 int pgprot_kernel ;
 int pgprot_writecombine (int ) ;

__attribute__((used)) static int mmap_kern(struct omapfb_mem_region *region)
{
 struct vm_struct *kvma;
 struct vm_area_struct vma;
 pgprot_t pgprot;
 unsigned long vaddr;

 kvma = get_vm_area(region->size, VM_IOREMAP);
 if (kvma == ((void*)0)) {
  dev_err(dispc.fbdev->dev, "can't get kernel vm area\n");
  return -ENOMEM;
 }
 vma.vm_mm = &init_mm;

 vaddr = (unsigned long)kvma->addr;

 pgprot = pgprot_writecombine(pgprot_kernel);
 vma.vm_start = vaddr;
 vma.vm_end = vaddr + region->size;
 if (io_remap_pfn_range(&vma, vaddr, region->paddr >> PAGE_SHIFT,
      region->size, pgprot) < 0) {
  dev_err(dispc.fbdev->dev, "kernel mmap for FBMEM failed\n");
  return -EAGAIN;
 }
 region->vaddr = (void *)vaddr;

 return 0;
}
