
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 int EBUSY ;
 int ENOMEM ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int init_mm ;
 int mk_pte (struct page*,int ) ;
 int * pte_alloc_kernel (int *,unsigned long) ;
 int pte_none (int ) ;
 int set_pte_at (int *,unsigned long,int *,int ) ;

__attribute__((used)) static int vmap_pte_range(pmd_t *pmd, unsigned long addr,
  unsigned long end, pgprot_t prot, struct page **pages, int *nr)
{
 pte_t *pte;






 pte = pte_alloc_kernel(pmd, addr);
 if (!pte)
  return -ENOMEM;
 do {
  struct page *page = pages[*nr];

  if (WARN_ON(!pte_none(*pte)))
   return -EBUSY;
  if (WARN_ON(!page))
   return -ENOMEM;
  set_pte_at(&init_mm, addr, pte, mk_pte(page, prot));
  (*nr)++;
 } while (pte++, addr += PAGE_SIZE, addr != end);
 return 0;
}
