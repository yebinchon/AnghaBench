
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_pgoff; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef scalar_t__ pgoff_t ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int __do_fault (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,scalar_t__,unsigned int,int ) ;
 int pte_unmap (int *) ;

__attribute__((used)) static int do_linear_fault(struct mm_struct *mm, struct vm_area_struct *vma,
  unsigned long address, pte_t *page_table, pmd_t *pmd,
  unsigned int flags, pte_t orig_pte)
{
 pgoff_t pgoff = (((address & PAGE_MASK)
   - vma->vm_start) >> PAGE_SHIFT) + vma->vm_pgoff;

 pte_unmap(page_table);
 return __do_fault(mm, vma, address, pmd, pgoff, flags, orig_pte);
}
