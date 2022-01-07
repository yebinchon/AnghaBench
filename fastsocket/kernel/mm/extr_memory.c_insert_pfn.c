
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pgprot_t ;


 int EBUSY ;
 int ENOMEM ;
 int * get_locked_pte (struct mm_struct*,unsigned long,int **) ;
 int pfn_pte (unsigned long,int ) ;
 int pte_mkspecial (int ) ;
 int pte_none (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int update_mmu_cache (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static int insert_pfn(struct vm_area_struct *vma, unsigned long addr,
   unsigned long pfn, pgprot_t prot)
{
 struct mm_struct *mm = vma->vm_mm;
 int retval;
 pte_t *pte, entry;
 spinlock_t *ptl;

 retval = -ENOMEM;
 pte = get_locked_pte(mm, addr, &ptl);
 if (!pte)
  goto out;
 retval = -EBUSY;
 if (!pte_none(*pte))
  goto out_unlock;


 entry = pte_mkspecial(pfn_pte(pfn, prot));
 set_pte_at(mm, addr, pte, entry);
 update_mmu_cache(vma, addr, entry);

 retval = 0;
out_unlock:
 pte_unmap_unlock(pte, ptl);
out:
 return retval;
}
