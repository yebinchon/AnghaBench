
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef scalar_t__ phys_addr_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int init_mm ;
 scalar_t__ ioremap_pmd_range (int *,unsigned long,unsigned long,scalar_t__,int ) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int * pud_alloc (int *,int *,unsigned long) ;

__attribute__((used)) static inline int ioremap_pud_range(pgd_t *pgd, unsigned long addr,
  unsigned long end, phys_addr_t phys_addr, pgprot_t prot)
{
 pud_t *pud;
 unsigned long next;

 phys_addr -= addr;
 pud = pud_alloc(&init_mm, pgd, addr);
 if (!pud)
  return -ENOMEM;
 do {
  next = pud_addr_end(addr, end);
  if (ioremap_pmd_range(pud, addr, next, phys_addr + addr, prot))
   return -ENOMEM;
 } while (pud++, addr = next, addr != end);
 return 0;
}
