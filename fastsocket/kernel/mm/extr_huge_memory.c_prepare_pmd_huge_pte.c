
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mm_struct {TYPE_1__* pmd_huge_pte; int page_table_lock; } ;
typedef TYPE_1__* pgtable_t ;
struct TYPE_3__ {int lru; } ;


 int INIT_LIST_HEAD (int *) ;
 int VM_BUG_ON (int ) ;
 int list_add (int *,int *) ;
 int spin_can_lock (int *) ;

__attribute__((used)) static void prepare_pmd_huge_pte(pgtable_t pgtable,
     struct mm_struct *mm)
{
 VM_BUG_ON(spin_can_lock(&mm->page_table_lock));


 if (!mm->pmd_huge_pte)
  INIT_LIST_HEAD(&pgtable->lru);
 else
  list_add(&pgtable->lru, &mm->pmd_huge_pte->lru);
 mm->pmd_huge_pte = pgtable;
}
