
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int page_table_lock; } ;
typedef int pud_t ;
typedef int pmd_t ;


 int ENOMEM ;
 int pgd_populate (struct mm_struct*,int *,int *) ;
 scalar_t__ pgd_present (int ) ;
 int * pmd_alloc_one (struct mm_struct*,unsigned long) ;
 int pmd_free (struct mm_struct*,int *) ;
 int pud_populate (struct mm_struct*,int *,int *) ;
 scalar_t__ pud_present (int ) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __pmd_alloc(struct mm_struct *mm, pud_t *pud, unsigned long address)
{
 pmd_t *new = pmd_alloc_one(mm, address);
 if (!new)
  return -ENOMEM;

 smp_wmb();

 spin_lock(&mm->page_table_lock);

 if (pud_present(*pud))
  pmd_free(mm, new);
 else
  pud_populate(mm, pud, new);






 spin_unlock(&mm->page_table_lock);
 return 0;
}
