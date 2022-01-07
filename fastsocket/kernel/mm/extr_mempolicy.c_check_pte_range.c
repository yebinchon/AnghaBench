
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
struct page {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int nodemask_t ;


 unsigned long MPOL_MF_INVERT ;
 unsigned long MPOL_MF_MOVE ;
 unsigned long MPOL_MF_MOVE_ALL ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PageReserved (struct page*) ;
 int migrate_page_add (struct page*,void*,unsigned long) ;
 int node_isset (int,int const) ;
 int page_to_nid (struct page*) ;
 int * pte_offset_map_lock (int ,int *,unsigned long,int **) ;
 int pte_present (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static int check_pte_range(struct vm_area_struct *vma, pmd_t *pmd,
  unsigned long addr, unsigned long end,
  const nodemask_t *nodes, unsigned long flags,
  void *private)
{
 pte_t *orig_pte;
 pte_t *pte;
 spinlock_t *ptl;

 orig_pte = pte = pte_offset_map_lock(vma->vm_mm, pmd, addr, &ptl);
 do {
  struct page *page;
  int nid;

  if (!pte_present(*pte))
   continue;
  page = vm_normal_page(vma, addr, *pte);
  if (!page)
   continue;




  if (PageReserved(page))
   continue;
  nid = page_to_nid(page);
  if (node_isset(nid, *nodes) == !!(flags & MPOL_MF_INVERT))
   continue;

  if (flags & (MPOL_MF_MOVE | MPOL_MF_MOVE_ALL))
   migrate_page_add(page, private, flags);
  else
   break;
 } while (pte++, addr += PAGE_SIZE, addr != end);
 pte_unmap_unlock(orig_pte, ptl);
 return addr != end;
}
