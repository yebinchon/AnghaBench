
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef enum page_check_address_pmd_flag { ____Placeholder_page_check_address_pmd_flag } page_check_address_pmd_flag ;


 unsigned long HPAGE_PMD_MASK ;
 int PAGE_CHECK_ADDRESS_PMD_NOTSPLITTING_FLAG ;
 int PAGE_CHECK_ADDRESS_PMD_SPLITTING_FLAG ;
 int VM_BUG_ON (int) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_present (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 struct page* pmd_page (int ) ;
 scalar_t__ pmd_trans_huge (int ) ;
 scalar_t__ pmd_trans_splitting (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;

pmd_t *page_check_address_pmd(struct page *page,
         struct mm_struct *mm,
         unsigned long address,
         enum page_check_address_pmd_flag flag)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd, *ret = ((void*)0);

 if (address & ~HPAGE_PMD_MASK)
  goto out;

 pgd = pgd_offset(mm, address);
 if (!pgd_present(*pgd))
  goto out;

 pud = pud_offset(pgd, address);
 if (!pud_present(*pud))
  goto out;

 pmd = pmd_offset(pud, address);
 if (pmd_none(*pmd))
  goto out;
 if (pmd_page(*pmd) != page)
  goto out;







 if (flag == PAGE_CHECK_ADDRESS_PMD_NOTSPLITTING_FLAG &&
     pmd_trans_splitting(*pmd))
  goto out;
 if (pmd_trans_huge(*pmd)) {
  VM_BUG_ON(flag == PAGE_CHECK_ADDRESS_PMD_SPLITTING_FLAG &&
     !pmd_trans_splitting(*pmd));
  ret = pmd;
 }
out:
 return ret;
}
