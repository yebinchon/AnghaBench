
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pud_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int change_pmd_range (struct vm_area_struct*,int *,unsigned long,unsigned long,int ,int) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static inline void change_pud_range(struct vm_area_struct *vma, pgd_t *pgd,
  unsigned long addr, unsigned long end, pgprot_t newprot,
  int dirty_accountable)
{
 pud_t *pud;
 unsigned long next;

 pud = pud_offset(pgd, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_none_or_clear_bad(pud))
   continue;
  change_pmd_range(vma, pud, addr, next, newprot,
     dirty_accountable);
 } while (pud++, addr = next, addr != end);
}
