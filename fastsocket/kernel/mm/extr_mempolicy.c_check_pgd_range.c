
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pgd_t ;
typedef int nodemask_t ;


 int EIO ;
 scalar_t__ check_pud_range (struct vm_area_struct*,int *,unsigned long,unsigned long,int const*,unsigned long,void*) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (int ,unsigned long) ;

__attribute__((used)) static inline int check_pgd_range(struct vm_area_struct *vma,
  unsigned long addr, unsigned long end,
  const nodemask_t *nodes, unsigned long flags,
  void *private)
{
 pgd_t *pgd;
 unsigned long next;

 pgd = pgd_offset(vma->vm_mm, addr);
 do {
  next = pgd_addr_end(addr, end);
  if (pgd_none_or_clear_bad(pgd))
   continue;
  if (check_pud_range(vma, pgd, addr, next, nodes,
        flags, private))
   return -EIO;
 } while (pgd++, addr = next, addr != end);
 return 0;
}
