
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_mm; } ;
struct page {int dummy; } ;
typedef int pgd_t ;


 unsigned long EFAULT ;
 unsigned long PAGE_SIZE ;
 unsigned long page_address_in_vma (struct page*,struct vm_area_struct*) ;
 scalar_t__ page_anon_vma (struct page*) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (int ,unsigned long) ;
 int unuse_pud_range (struct vm_area_struct*,int *,unsigned long,unsigned long,int ,struct page*) ;

__attribute__((used)) static int unuse_vma(struct vm_area_struct *vma,
    swp_entry_t entry, struct page *page)
{
 pgd_t *pgd;
 unsigned long addr, end, next;
 int ret;

 if (page_anon_vma(page)) {
  addr = page_address_in_vma(page, vma);
  if (addr == -EFAULT)
   return 0;
  else
   end = addr + PAGE_SIZE;
 } else {
  addr = vma->vm_start;
  end = vma->vm_end;
 }

 pgd = pgd_offset(vma->vm_mm, addr);
 do {
  next = pgd_addr_end(addr, end);
  if (pgd_none_or_clear_bad(pgd))
   continue;
  ret = unuse_pud_range(vma, pgd, addr, next, entry, page);
  if (ret)
   return ret;
 } while (pgd++, addr = next, addr != end);
 return 0;
}
