
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int EINVAL ;
 int VM_BUG_ON (int ) ;
 int pgd_bad (int ) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pmd_bad (int ) ;
 scalar_t__ pmd_huge (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_trans_huge (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_present (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int pud_bad (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int follow_pte(struct mm_struct *mm, unsigned long address,
  pte_t **ptepp, spinlock_t **ptlp)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *ptep;

 pgd = pgd_offset(mm, address);
 if (pgd_none(*pgd) || unlikely(pgd_bad(*pgd)))
  goto out;

 pud = pud_offset(pgd, address);
 if (pud_none(*pud) || unlikely(pud_bad(*pud)))
  goto out;

 pmd = pmd_offset(pud, address);
 VM_BUG_ON(pmd_trans_huge(*pmd));
 if (pmd_none(*pmd) || unlikely(pmd_bad(*pmd)))
  goto out;


 if (pmd_huge(*pmd))
  goto out;

 ptep = pte_offset_map_lock(mm, pmd, address, ptlp);
 if (!ptep)
  goto out;
 if (!pte_present(*ptep))
  goto unlock;
 *ptepp = ptep;
 return 0;
unlock:
 pte_unmap_unlock(ptep, *ptlp);
out:
 return -EINVAL;
}
