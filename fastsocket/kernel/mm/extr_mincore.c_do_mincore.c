
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int vm_end; } ;
struct TYPE_2__ {int mm; } ;


 long ENOMEM ;
 unsigned long PAGE_SHIFT ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 unsigned long min (int ,unsigned long) ;
 int mincore_hugetlb_page_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned char*) ;
 int mincore_page_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned char*) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;

__attribute__((used)) static long do_mincore(unsigned long addr, unsigned long pages, unsigned char *vec)
{
 struct vm_area_struct *vma;
 unsigned long end;

 vma = find_vma(current->mm, addr);
 if (!vma || addr < vma->vm_start)
  return -ENOMEM;

 end = min(vma->vm_end, addr + (pages << PAGE_SHIFT));

 if (is_vm_hugetlb_page(vma)) {
  mincore_hugetlb_page_range(vma, addr, end, vec);
  return (end - addr) >> PAGE_SHIFT;
 }

 end = pmd_addr_end(addr, end);

 if (is_vm_hugetlb_page(vma))
  mincore_hugetlb_page_range(vma, addr, end, vec);
 else
  mincore_page_range(vma, addr, end, vec);

 return (end - addr) >> PAGE_SHIFT;
}
