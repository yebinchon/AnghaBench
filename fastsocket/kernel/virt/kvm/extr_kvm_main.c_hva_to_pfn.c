
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int vm_flags; scalar_t__ vm_pgoff; } ;
struct page {int dummy; } ;
struct kvm {int dummy; } ;
typedef scalar_t__ pfn_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 int BUG_ON (int) ;
 unsigned long PAGE_SHIFT ;
 int VM_PFNMAP ;
 scalar_t__ check_user_page_hwpoison (unsigned long) ;
 TYPE_2__* current ;
 int down_read (int *) ;
 struct page* fault_page ;
 struct vm_area_struct* find_vma (TYPE_1__*,unsigned long) ;
 int get_page (struct page*) ;
 int get_user_pages_fast (unsigned long,int,int,struct page**) ;
 struct page* hwpoison_page ;
 int kvm_is_mmio_pfn (scalar_t__) ;
 int might_sleep () ;
 scalar_t__ page_to_pfn (struct page*) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

pfn_t hva_to_pfn(struct kvm *kvm, unsigned long addr)
{
 struct page *page[1];
 int npages;
 pfn_t pfn;

 might_sleep();

 npages = get_user_pages_fast(addr, 1, 1, page);

 if (unlikely(npages != 1)) {
  struct vm_area_struct *vma;

  down_read(&current->mm->mmap_sem);
  if (check_user_page_hwpoison(addr)) {
   up_read(&current->mm->mmap_sem);
   get_page(hwpoison_page);
   return page_to_pfn(hwpoison_page);
  }

  vma = find_vma(current->mm, addr);

  if (vma == ((void*)0) || addr < vma->vm_start ||
      !(vma->vm_flags & VM_PFNMAP)) {
   up_read(&current->mm->mmap_sem);
   get_page(fault_page);
   return page_to_pfn(fault_page);
  }

  pfn = ((addr - vma->vm_start) >> PAGE_SHIFT) + vma->vm_pgoff;
  up_read(&current->mm->mmap_sem);
  BUG_ON(!kvm_is_mmio_pfn(pfn));
 } else
  pfn = page_to_pfn(page[0]);

 return pfn;
}
