
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int page_table_lock; } ;
typedef int pud_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int pgd_populate (struct mm_struct*,int *,int *) ;
 scalar_t__ pgd_present (int ) ;
 int * pud_alloc_one (struct mm_struct*,unsigned long) ;
 int pud_free (struct mm_struct*,int *) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __pud_alloc(struct mm_struct *mm, pgd_t *pgd, unsigned long address)
{
 pud_t *new = pud_alloc_one(mm, address);
 if (!new)
  return -ENOMEM;

 smp_wmb();

 spin_lock(&mm->page_table_lock);
 if (pgd_present(*pgd))
  pud_free(mm, new);
 else
  pgd_populate(mm, pgd, new);
 spin_unlock(&mm->page_table_lock);
 return 0;
}
