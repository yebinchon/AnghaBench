
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int mm; } ;
typedef int pgd_t ;


 unsigned long PMD_MASK ;
 scalar_t__ PMD_SIZE ;
 int free_pud_range (struct mmu_gather*,int *,unsigned long,unsigned long,unsigned long,unsigned long) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (int ,unsigned long) ;

void free_pgd_range(struct mmu_gather *tlb,
   unsigned long addr, unsigned long end,
   unsigned long floor, unsigned long ceiling)
{
 pgd_t *pgd;
 unsigned long next;
 unsigned long start;
 addr &= PMD_MASK;
 if (addr < floor) {
  addr += PMD_SIZE;
  if (!addr)
   return;
 }
 if (ceiling) {
  ceiling &= PMD_MASK;
  if (!ceiling)
   return;
 }
 if (end - 1 > ceiling - 1)
  end -= PMD_SIZE;
 if (addr > end - 1)
  return;

 start = addr;
 pgd = pgd_offset(tlb->mm, addr);
 do {
  next = pgd_addr_end(addr, end);
  if (pgd_none_or_clear_bad(pgd))
   continue;
  free_pud_range(tlb, pgd, addr, next, floor, ceiling);
 } while (pgd++, addr = next, addr != end);
}
