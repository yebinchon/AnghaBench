
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; } ;
struct page {int dummy; } ;
struct mm_struct {int page_table_lock; } ;
struct hstate {int dummy; } ;
typedef int pte_t ;


 int ENOMEM ;
 int SINGLE_DEPTH_NESTING ;
 int VM_MAYWRITE ;
 int VM_SHARED ;
 int get_page (struct page*) ;
 struct hstate* hstate_vma (struct vm_area_struct*) ;
 unsigned long huge_page_size (struct hstate*) ;
 int * huge_pte_alloc (struct mm_struct*,unsigned long,unsigned long,int*) ;
 int huge_pte_none (int ) ;
 int * huge_pte_offset (struct mm_struct*,unsigned long) ;
 int huge_ptep_get (int *) ;
 int huge_ptep_set_wrprotect (struct mm_struct*,unsigned long,int *) ;
 int page_dup_rmap (struct page*) ;
 struct page* pte_page (int ) ;
 int set_huge_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;

int copy_hugetlb_page_range(struct mm_struct *dst, struct mm_struct *src,
       struct vm_area_struct *vma)
{
 pte_t *src_pte, *dst_pte, entry;
 struct page *ptepage;
 unsigned long addr;
 int cow;
 struct hstate *h = hstate_vma(vma);
 unsigned long sz = huge_page_size(h);
 bool shared = 0;

 cow = (vma->vm_flags & (VM_SHARED | VM_MAYWRITE)) == VM_MAYWRITE;

 for (addr = vma->vm_start; addr < vma->vm_end; addr += sz) {
  src_pte = huge_pte_offset(src, addr);
  if (!src_pte)
   continue;
  dst_pte = huge_pte_alloc(dst, addr, sz, &shared);
  if (!dst_pte)
   goto nomem;


  if (shared)
   continue;

  spin_lock(&dst->page_table_lock);
  spin_lock_nested(&src->page_table_lock, SINGLE_DEPTH_NESTING);
  if (!huge_pte_none(huge_ptep_get(src_pte))) {
   if (cow)
    huge_ptep_set_wrprotect(src, addr, src_pte);
   entry = huge_ptep_get(src_pte);
   ptepage = pte_page(entry);
   get_page(ptepage);
   page_dup_rmap(ptepage);
   set_huge_pte_at(dst, addr, dst_pte, entry);
  }
  spin_unlock(&src->page_table_lock);
  spin_unlock(&dst->page_table_lock);
 }
 return 0;

nomem:
 return -ENOMEM;
}
