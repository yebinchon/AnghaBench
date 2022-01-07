
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int * pte_lockptr (struct mm_struct*,int *) ;
 int pte_same (int ,int ) ;
 int pte_unmap (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int pte_unmap_same(struct mm_struct *mm, pmd_t *pmd,
    pte_t *page_table, pte_t orig_pte)
{
 int same = 1;
 pte_unmap(page_table);
 return same;
}
