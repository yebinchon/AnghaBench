
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_walk {int (* pte_entry ) (int *,unsigned long,scalar_t__,struct mm_walk*) ;} ;
typedef int pte_t ;
typedef int pmd_t ;


 scalar_t__ PAGE_SIZE ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_unmap (int *) ;
 int stub1 (int *,unsigned long,scalar_t__,struct mm_walk*) ;

__attribute__((used)) static int walk_pte_range(pmd_t *pmd, unsigned long addr, unsigned long end,
     struct mm_walk *walk)
{
 pte_t *pte;
 int err = 0;

 pte = pte_offset_map(pmd, addr);
 for (;;) {
  err = walk->pte_entry(pte, addr, addr + PAGE_SIZE, walk);
  if (err)
         break;
  addr += PAGE_SIZE;
  if (addr == end)
   break;
  pte++;
 }

 pte_unmap(pte);
 return err;
}
