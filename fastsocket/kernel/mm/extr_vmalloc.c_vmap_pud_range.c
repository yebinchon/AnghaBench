
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pud_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int init_mm ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int * pud_alloc (int *,int *,unsigned long) ;
 scalar_t__ vmap_pmd_range (int *,unsigned long,unsigned long,int ,struct page**,int*) ;

__attribute__((used)) static int vmap_pud_range(pgd_t *pgd, unsigned long addr,
  unsigned long end, pgprot_t prot, struct page **pages, int *nr)
{
 pud_t *pud;
 unsigned long next;

 pud = pud_alloc(&init_mm, pgd, addr);
 if (!pud)
  return -ENOMEM;
 do {
  next = pud_addr_end(addr, end);
  if (vmap_pmd_range(pud, addr, next, prot, pages, nr))
   return -ENOMEM;
 } while (pud++, addr = next, addr != end);
 return 0;
}
