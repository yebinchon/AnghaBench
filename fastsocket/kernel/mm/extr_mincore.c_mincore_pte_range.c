
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int val; } ;
typedef TYPE_2__ swp_entry_t ;
struct vm_area_struct {TYPE_1__* vm_file; int vm_mm; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgoff_t ;
struct TYPE_5__ {int * f_mapping; } ;


 unsigned long PAGE_SIZE ;
 int WARN_ON (int) ;
 scalar_t__ is_migration_entry (TYPE_2__) ;
 unsigned char mincore_page (int *,int ) ;
 int mincore_unmapped_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned char*) ;
 scalar_t__ pte_file (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map_lock (int ,int *,unsigned long,int **) ;
 scalar_t__ pte_present (int ) ;
 int pte_to_pgoff (int ) ;
 TYPE_2__ pte_to_swp_entry (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int swapper_space ;

__attribute__((used)) static void mincore_pte_range(struct vm_area_struct *vma, pmd_t *pmd,
   unsigned long addr, unsigned long end,
   unsigned char *vec)
{
 unsigned long next;
 spinlock_t *ptl;
 pte_t *ptep;

 ptep = pte_offset_map_lock(vma->vm_mm, pmd, addr, &ptl);
 do {
  pte_t pte = *ptep;
  pgoff_t pgoff;

  next = addr + PAGE_SIZE;
  if (pte_none(pte))
   mincore_unmapped_range(vma, addr, next, vec);
  else if (pte_present(pte))
   *vec = 1;
  else if (pte_file(pte)) {
   pgoff = pte_to_pgoff(pte);
   *vec = mincore_page(vma->vm_file->f_mapping, pgoff);
  } else {
   swp_entry_t entry = pte_to_swp_entry(pte);

   if (is_migration_entry(entry)) {

    *vec = 1;
   } else {




    WARN_ON(1);
    *vec = 1;

   }
  }
  vec++;
 } while (ptep++, addr = next, addr != end);
 pte_unmap_unlock(ptep - 1, ptl);
}
