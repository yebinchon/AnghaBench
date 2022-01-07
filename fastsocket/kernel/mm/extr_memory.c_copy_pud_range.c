
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 int ENOMEM ;
 scalar_t__ copy_pmd_range (struct mm_struct*,struct mm_struct*,int *,int *,struct vm_area_struct*,unsigned long,unsigned long) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static inline int copy_pud_range(struct mm_struct *dst_mm, struct mm_struct *src_mm,
  pgd_t *dst_pgd, pgd_t *src_pgd, struct vm_area_struct *vma,
  unsigned long addr, unsigned long end)
{
 pud_t *src_pud, *dst_pud;
 unsigned long next;

 dst_pud = pud_alloc(dst_mm, dst_pgd, addr);
 if (!dst_pud)
  return -ENOMEM;
 src_pud = pud_offset(src_pgd, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_none_or_clear_bad(src_pud))
   continue;
  if (copy_pmd_range(dst_mm, src_mm, dst_pud, src_pud,
      vma, addr, next))
   return -ENOMEM;
 } while (dst_pud++, src_pud++, addr = next, addr != end);
 return 0;
}
