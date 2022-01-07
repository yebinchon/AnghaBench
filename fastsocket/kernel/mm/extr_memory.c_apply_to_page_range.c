
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_fn_t ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 int apply_to_pud_range (struct mm_struct*,int *,unsigned long,unsigned long,int ,void*) ;
 int mmu_notifier_invalidate_range_end (struct mm_struct*,unsigned long,unsigned long) ;
 int mmu_notifier_invalidate_range_start (struct mm_struct*,unsigned long,unsigned long) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;

int apply_to_page_range(struct mm_struct *mm, unsigned long addr,
   unsigned long size, pte_fn_t fn, void *data)
{
 pgd_t *pgd;
 unsigned long next;
 unsigned long start = addr, end = addr + size;
 int err;

 BUG_ON(addr >= end);
 mmu_notifier_invalidate_range_start(mm, start, end);
 pgd = pgd_offset(mm, addr);
 do {
  next = pgd_addr_end(addr, end);
  err = apply_to_pud_range(mm, pgd, addr, next, fn, data);
  if (err)
   break;
 } while (pgd++, addr = next, addr != end);
 mmu_notifier_invalidate_range_end(mm, start, end);
 return err;
}
