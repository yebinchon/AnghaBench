
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_struct {scalar_t__ addr; } ;
struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_end; int * vm_mm; } ;
typedef int pgprot_t ;
struct TYPE_4__ {int vram_phys; void* vram_virt; TYPE_1__* fbdev; scalar_t__ vram_size; } ;
struct TYPE_3__ {int dev; } ;


 int EAGAIN ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int VM_IOREMAP ;
 int dev_err (int ,char*) ;
 struct vm_struct* get_vm_area (scalar_t__,int ) ;
 int init_mm ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,unsigned long,int,scalar_t__,int ) ;
 TYPE_2__ lcdc ;
 int pgprot_kernel ;
 int pgprot_writecombine (int ) ;

__attribute__((used)) static int mmap_kern(void)
{
 struct vm_struct *kvma;
 struct vm_area_struct vma;
 pgprot_t pgprot;
 unsigned long vaddr;

 kvma = get_vm_area(lcdc.vram_size, VM_IOREMAP);
 if (kvma == ((void*)0)) {
  dev_err(lcdc.fbdev->dev, "can't get kernel vm area\n");
  return -ENOMEM;
 }
 vma.vm_mm = &init_mm;

 vaddr = (unsigned long)kvma->addr;
 vma.vm_start = vaddr;
 vma.vm_end = vaddr + lcdc.vram_size;

 pgprot = pgprot_writecombine(pgprot_kernel);
 if (io_remap_pfn_range(&vma, vaddr,
      lcdc.vram_phys >> PAGE_SHIFT,
      lcdc.vram_size, pgprot) < 0) {
  dev_err(lcdc.fbdev->dev, "kernel mmap for FB memory failed\n");
  return -EAGAIN;
 }

 lcdc.vram_virt = (void *)vaddr;

 return 0;
}
