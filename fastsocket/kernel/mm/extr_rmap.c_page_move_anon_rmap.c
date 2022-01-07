
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct anon_vma* anon_vma; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct anon_vma {int dummy; } ;
struct address_space {int dummy; } ;


 int PAGE_MAPPING_ANON ;
 int PageLocked (struct page*) ;
 int VM_BUG_ON (int) ;
 scalar_t__ linear_page_index (struct vm_area_struct*,unsigned long) ;

void page_move_anon_rmap(struct page *page,
 struct vm_area_struct *vma, unsigned long address)
{
 struct anon_vma *anon_vma = vma->anon_vma;

 VM_BUG_ON(!PageLocked(page));
 VM_BUG_ON(!anon_vma);
 VM_BUG_ON(page->index != linear_page_index(vma, address));

 anon_vma = (void *) anon_vma + PAGE_MAPPING_ANON;
 page->mapping = (struct address_space *) anon_vma;
}
