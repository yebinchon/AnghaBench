
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;
typedef int nodemask_t ;


 int EIO ;
 scalar_t__ check_pmd_range (struct vm_area_struct*,int *,unsigned long,unsigned long,int const*,unsigned long,void*) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static inline int check_pud_range(struct vm_area_struct *vma, pgd_t *pgd,
  unsigned long addr, unsigned long end,
  const nodemask_t *nodes, unsigned long flags,
  void *private)
{
 pud_t *pud;
 unsigned long next;

 pud = pud_offset(pgd, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_none_or_clear_bad(pud))
   continue;
  if (check_pmd_range(vma, pud, addr, next, nodes,
        flags, private))
   return -EIO;
 } while (pud++, addr = next, addr != end);
 return 0;
}
