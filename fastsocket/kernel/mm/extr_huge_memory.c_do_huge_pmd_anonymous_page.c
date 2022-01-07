
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_end; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;


 int GFP_KERNEL ;
 unsigned long HPAGE_PMD_MASK ;
 scalar_t__ HPAGE_PMD_SIZE ;
 int THP_FAULT_ALLOC ;
 int THP_FAULT_FALLBACK ;
 int VM_FAULT_OOM ;
 int __do_huge_pmd_anonymous_page (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,struct page*) ;
 int __pte_alloc (struct mm_struct*,struct vm_area_struct*,int *,unsigned long) ;
 struct page* alloc_hugepage_vma (int ,struct vm_area_struct*,unsigned long,int ,int ) ;
 int anon_vma_prepare (struct vm_area_struct*) ;
 int count_vm_event (int ) ;
 int handle_pte_fault (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int *,unsigned int) ;
 int khugepaged_enter (struct vm_area_struct*) ;
 int mem_cgroup_newpage_charge (struct page*,struct mm_struct*,int ) ;
 int numa_node_id () ;
 int pmd_none (int ) ;
 int pmd_trans_huge (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 int put_page (struct page*) ;
 int transparent_hugepage_defrag (struct vm_area_struct*) ;
 scalar_t__ unlikely (int) ;

int do_huge_pmd_anonymous_page(struct mm_struct *mm, struct vm_area_struct *vma,
          unsigned long address, pmd_t *pmd,
          unsigned int flags)
{
 struct page *page;
 unsigned long haddr = address & HPAGE_PMD_MASK;
 pte_t *pte;

 if (haddr >= vma->vm_start && haddr + HPAGE_PMD_SIZE <= vma->vm_end) {
  if (unlikely(anon_vma_prepare(vma)))
   return VM_FAULT_OOM;
  if (unlikely(khugepaged_enter(vma)))
   return VM_FAULT_OOM;
  page = alloc_hugepage_vma(transparent_hugepage_defrag(vma),
       vma, haddr, numa_node_id(), 0);
  if (unlikely(!page)) {
   count_vm_event(THP_FAULT_FALLBACK);
   goto out;
  }
  count_vm_event(THP_FAULT_ALLOC);
  if (unlikely(mem_cgroup_newpage_charge(page, mm, GFP_KERNEL))) {
   put_page(page);
   goto out;
  }

  return __do_huge_pmd_anonymous_page(mm, vma, haddr, pmd, page);
 }
out:





 if (unlikely(pmd_none(*pmd)) &&
     unlikely(__pte_alloc(mm, vma, pmd, address)))
  return VM_FAULT_OOM;

 if (unlikely(pmd_trans_huge(*pmd)))
  return 0;






 pte = pte_offset_map(pmd, address);
 return handle_pte_fault(mm, vma, address, pte, pmd, flags);
}
