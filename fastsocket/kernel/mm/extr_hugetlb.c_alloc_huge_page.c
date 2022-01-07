
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;


 struct page* ERR_PTR (int ) ;
 int NUMA_NO_NODE ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGBUS ;
 struct page* alloc_buddy_huge_page (struct hstate*,int ) ;
 struct page* dequeue_huge_page_vma (struct hstate*,struct vm_area_struct*,unsigned long,int) ;
 struct hstate* hstate_vma (struct vm_area_struct*) ;
 scalar_t__ hugepage_subpool_get_pages (struct hugepage_subpool*,long) ;
 int hugepage_subpool_put_pages (struct hugepage_subpool*,long) ;
 int hugetlb_lock ;
 int set_page_private (struct page*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct hugepage_subpool* subpool_vma (struct vm_area_struct*) ;
 int vma_commit_reservation (struct hstate*,struct vm_area_struct*,unsigned long) ;
 long vma_needs_reservation (struct hstate*,struct vm_area_struct*,unsigned long) ;

__attribute__((used)) static struct page *alloc_huge_page(struct vm_area_struct *vma,
        unsigned long addr, int avoid_reserve)
{
 struct hugepage_subpool *spool = subpool_vma(vma);
 struct hstate *h = hstate_vma(vma);
 struct page *page;
 long chg;
 chg = vma_needs_reservation(h, vma, addr);
 if (chg < 0)
  return ERR_PTR(-VM_FAULT_OOM);
 if (chg)
  if (hugepage_subpool_get_pages(spool, chg))
   return ERR_PTR(-VM_FAULT_SIGBUS);

 spin_lock(&hugetlb_lock);
 page = dequeue_huge_page_vma(h, vma, addr, avoid_reserve);
 spin_unlock(&hugetlb_lock);

 if (!page) {
  page = alloc_buddy_huge_page(h, NUMA_NO_NODE);
  if (!page) {
   hugepage_subpool_put_pages(spool, chg);
   return ERR_PTR(-VM_FAULT_SIGBUS);
  }
 }

 set_page_private(page, (unsigned long)spool);

 vma_commit_reservation(h, vma, addr);

 return page;
}
