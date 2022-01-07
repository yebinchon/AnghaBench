
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_end; } ;
struct task_struct {int min_flt; int maj_flt; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int BUG () ;
 int BUG_ON (int ) ;
 int EFAULT ;
 int EHWPOISON ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int FAULT_FLAG_WRITE ;
 unsigned int FOLL_FORCE ;
 unsigned int FOLL_GET ;
 unsigned int FOLL_HWPOISON ;
 unsigned int FOLL_WRITE ;
 scalar_t__ IS_ERR (struct page*) ;
 unsigned long PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 unsigned long TASK_SIZE ;
 int VM_BUG_ON (int) ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_HWPOISON ;
 int VM_FAULT_HWPOISON_LARGE ;
 int VM_FAULT_MAJOR ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGBUS ;
 int VM_FAULT_WRITE ;
 int VM_IO ;
 unsigned long VM_MAYREAD ;
 unsigned long VM_MAYWRITE ;
 int VM_PFNMAP ;
 unsigned long VM_READ ;
 unsigned long VM_WRITE ;
 int cond_resched () ;
 int current ;
 int fatal_signal_pending (int ) ;
 struct vm_area_struct* find_extend_vma (struct mm_struct*,unsigned long) ;
 int flush_anon_page (struct vm_area_struct*,struct page*,unsigned long) ;
 int flush_dcache_page (struct page*) ;
 int follow_hugetlb_page (struct mm_struct*,struct vm_area_struct*,struct page**,struct vm_area_struct**,unsigned long*,int*,int,unsigned int) ;
 struct page* follow_page (struct vm_area_struct*,unsigned long,unsigned int) ;
 struct vm_area_struct* get_gate_vma (struct mm_struct*) ;
 int get_page (struct page*) ;
 int handle_mm_fault (struct mm_struct*,struct vm_area_struct*,unsigned long,int ) ;
 scalar_t__ in_gate_area (struct mm_struct*,unsigned long) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int pgd_none (int ) ;
 int * pgd_offset_gate (struct mm_struct*,unsigned long) ;
 int * pgd_offset_k (unsigned long) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_trans_huge (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_unmap (int *) ;
 int pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;

int __get_user_pages(struct task_struct *tsk, struct mm_struct *mm,
       unsigned long start, int nr_pages, unsigned int gup_flags,
       struct page **pages, struct vm_area_struct **vmas)
{
 int i;
 unsigned long vm_flags;

 if (nr_pages <= 0)
  return 0;

 VM_BUG_ON(!!pages != !!(gup_flags & FOLL_GET));





 vm_flags = (gup_flags & FOLL_WRITE) ?
   (VM_WRITE | VM_MAYWRITE) : (VM_READ | VM_MAYREAD);
 vm_flags &= (gup_flags & FOLL_FORCE) ?
   (VM_MAYREAD | VM_MAYWRITE) : (VM_READ | VM_WRITE);
 i = 0;

 do {
  struct vm_area_struct *vma;

  vma = find_extend_vma(mm, start);
  if (!vma && in_gate_area(mm, start)) {
   unsigned long pg = start & PAGE_MASK;
   struct vm_area_struct *gate_vma = get_gate_vma(mm);
   pgd_t *pgd;
   pud_t *pud;
   pmd_t *pmd;
   pte_t *pte;


   if (gup_flags & FOLL_WRITE)
    return i ? : -EFAULT;
   if (pg > TASK_SIZE)
    pgd = pgd_offset_k(pg);
   else
    pgd = pgd_offset_gate(mm, pg);
   BUG_ON(pgd_none(*pgd));
   pud = pud_offset(pgd, pg);
   BUG_ON(pud_none(*pud));
   pmd = pmd_offset(pud, pg);
   if (pmd_none(*pmd))
    return i ? : -EFAULT;
   VM_BUG_ON(pmd_trans_huge(*pmd));
   pte = pte_offset_map(pmd, pg);
   if (pte_none(*pte)) {
    pte_unmap(pte);
    return i ? : -EFAULT;
   }
   if (pages) {
    struct page *page = vm_normal_page(gate_vma, start, *pte);
    pages[i] = page;
    if (page)
     get_page(page);
   }
   pte_unmap(pte);
   if (vmas)
    vmas[i] = gate_vma;
   i++;
   start += PAGE_SIZE;
   nr_pages--;
   continue;
  }

  if (!vma ||
      (vma->vm_flags & (VM_IO | VM_PFNMAP)) ||
      !(vm_flags & vma->vm_flags))
   return i ? : -EFAULT;

  if (is_vm_hugetlb_page(vma)) {
   i = follow_hugetlb_page(mm, vma, pages, vmas,
     &start, &nr_pages, i, gup_flags);
   continue;
  }

  do {
   struct page *page;
   unsigned int foll_flags = gup_flags;





   if (unlikely(fatal_signal_pending(current)))
    return i ? i : -ERESTARTSYS;

   cond_resched();
   while (!(page = follow_page(vma, start, foll_flags))) {
    int ret;

    ret = handle_mm_fault(mm, vma, start,
     (foll_flags & FOLL_WRITE) ?
     FAULT_FLAG_WRITE : 0);

    if (ret & VM_FAULT_ERROR) {
     if (ret & VM_FAULT_OOM)
      return i ? i : -ENOMEM;
     if (ret & (VM_FAULT_HWPOISON |
         VM_FAULT_HWPOISON_LARGE)) {
      if (i)
       return i;
      else if (gup_flags & FOLL_HWPOISON)
       return -EHWPOISON;
      else
       return -EFAULT;
     }
     if (ret & VM_FAULT_SIGBUS)
      return i ? i : -EFAULT;
     BUG();
    }

    if (tsk) {
     if (ret & VM_FAULT_MAJOR)
      tsk->maj_flt++;
     else
      tsk->min_flt++;
    }
    if ((ret & VM_FAULT_WRITE) &&
        !(vma->vm_flags & VM_WRITE))
     foll_flags &= ~FOLL_WRITE;

    cond_resched();
   }
   if (IS_ERR(page))
    return i ? i : PTR_ERR(page);
   if (pages) {
    pages[i] = page;

    flush_anon_page(vma, page, start);
    flush_dcache_page(page);
   }
   if (vmas)
    vmas[i] = vma;
   i++;
   start += PAGE_SIZE;
   nr_pages--;
  } while (nr_pages && start < vma->vm_end);
 } while (nr_pages);
 return i;
}
