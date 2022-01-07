
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; } ;
struct page {int dummy; } ;
typedef int pte_t ;


 int huge_pte_wrprotect (int ) ;
 int mk_pte (struct page*,int ) ;
 int pte_mkdirty (int ) ;
 int pte_mkhuge (int ) ;
 int pte_mkwrite (int ) ;
 int pte_mkyoung (int ) ;

__attribute__((used)) static pte_t make_huge_pte(struct vm_area_struct *vma, struct page *page,
    int writable)
{
 pte_t entry;

 if (writable) {
  entry =
      pte_mkwrite(pte_mkdirty(mk_pte(page, vma->vm_page_prot)));
 } else {
  entry = huge_pte_wrprotect(mk_pte(page, vma->vm_page_prot));
 }
 entry = pte_mkyoung(entry);
 entry = pte_mkhuge(entry);

 return entry;
}
