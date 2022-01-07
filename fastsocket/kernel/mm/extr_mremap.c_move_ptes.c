
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_page_prot; scalar_t__ vm_truncate_count; TYPE_1__* vm_file; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
struct address_space {int i_mmap_lock; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;
struct TYPE_2__ {struct address_space* f_mapping; } ;


 scalar_t__ PAGE_SIZE ;
 int SINGLE_DEPTH_NESTING ;
 int arch_enter_lazy_mmu_mode () ;
 int arch_leave_lazy_mmu_mode () ;
 int move_pte (int ,int ,unsigned long,unsigned long) ;
 int * pte_lockptr (struct mm_struct*,int *) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int * pte_offset_map_nested (int *,unsigned long) ;
 int pte_unmap_nested (int *) ;
 int pte_unmap_unlock (int *,int *) ;
 int ptep_get_and_clear (struct mm_struct*,unsigned long,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void move_ptes(struct vm_area_struct *vma, pmd_t *old_pmd,
  unsigned long old_addr, unsigned long old_end,
  struct vm_area_struct *new_vma, pmd_t *new_pmd,
  unsigned long new_addr)
{
 struct address_space *mapping = ((void*)0);
 struct mm_struct *mm = vma->vm_mm;
 pte_t *old_pte, *new_pte, pte;
 spinlock_t *old_ptl, *new_ptl;

 if (vma->vm_file) {






  mapping = vma->vm_file->f_mapping;
  spin_lock(&mapping->i_mmap_lock);
  new_vma->vm_truncate_count = 0;
 }





 old_pte = pte_offset_map_lock(mm, old_pmd, old_addr, &old_ptl);
  new_pte = pte_offset_map_nested(new_pmd, new_addr);
 new_ptl = pte_lockptr(mm, new_pmd);
 if (new_ptl != old_ptl)
  spin_lock_nested(new_ptl, SINGLE_DEPTH_NESTING);
 arch_enter_lazy_mmu_mode();

 for (; old_addr < old_end; old_pte++, old_addr += PAGE_SIZE,
       new_pte++, new_addr += PAGE_SIZE) {
  if (pte_none(*old_pte))
   continue;
  pte = ptep_get_and_clear(mm, old_addr, old_pte);
  pte = move_pte(pte, new_vma->vm_page_prot, old_addr, new_addr);
  set_pte_at(mm, new_addr, new_pte, pte);
 }

 arch_leave_lazy_mmu_mode();
 if (new_ptl != old_ptl)
  spin_unlock(new_ptl);
 pte_unmap_nested(new_pte - 1);
 pte_unmap_unlock(old_pte - 1, old_ptl);
 if (mapping)
  spin_unlock(&mapping->i_mmap_lock);
}
