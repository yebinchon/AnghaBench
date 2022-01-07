
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 scalar_t__ PAGE_MIGRATION ;
 scalar_t__ PAGE_SIZE ;
 int __ptep_modify_prot_commit (struct mm_struct*,unsigned long,int *,int ) ;
 int __ptep_modify_prot_start (struct mm_struct*,unsigned long,int *) ;
 int arch_enter_lazy_mmu_mode () ;
 int arch_leave_lazy_mmu_mode () ;
 scalar_t__ is_write_migration_entry (int ) ;
 scalar_t__ likely (int) ;
 int make_migration_entry_read (int *) ;
 int paravirt_enabled () ;
 scalar_t__ pte_dirty (int ) ;
 int pte_file (int ) ;
 int pte_mkwrite (int ) ;
 int pte_modify (int ,int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 scalar_t__ pte_present (int ) ;
 int pte_to_swp_entry (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int ptep_modify_prot_commit (struct mm_struct*,unsigned long,int *,int ) ;
 int ptep_modify_prot_start (struct mm_struct*,unsigned long,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int swp_entry_to_pte (int ) ;

__attribute__((used)) static void change_pte_range(struct mm_struct *mm, pmd_t *pmd,
  unsigned long addr, unsigned long end, pgprot_t newprot,
  int dirty_accountable)
{
 pte_t *pte, oldpte;
 spinlock_t *ptl;

 pte = pte_offset_map_lock(mm, pmd, addr, &ptl);
 arch_enter_lazy_mmu_mode();
 do {
  oldpte = *pte;
  if (pte_present(oldpte)) {
   pte_t ptent;






    ptent = ptep_modify_prot_start(mm, addr, pte);
   ptent = pte_modify(ptent, newprot);





   if (dirty_accountable && pte_dirty(ptent))
    ptent = pte_mkwrite(ptent);






    ptep_modify_prot_commit(mm, addr, pte, ptent);
  } else if (PAGE_MIGRATION && !pte_file(oldpte)) {
   swp_entry_t entry = pte_to_swp_entry(oldpte);

   if (is_write_migration_entry(entry)) {




    make_migration_entry_read(&entry);
    set_pte_at(mm, addr, pte,
     swp_entry_to_pte(entry));
   }
  }
 } while (pte++, addr += PAGE_SIZE, addr != end);
 arch_leave_lazy_mmu_mode();
 pte_unmap_unlock(pte - 1, ptl);
}
