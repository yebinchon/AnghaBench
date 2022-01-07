
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int anon_vma; } ;
struct page {int dummy; } ;
struct mm_struct {int page_table_lock; int nr_ptes; } ;
typedef int pmd_t ;
typedef int pgtable_t ;


 int EAGAIN ;
 int ENOMEM ;
 int HPAGE_PMD_NR ;
 int PageHead (struct page*) ;
 int SINGLE_DEPTH_NESTING ;
 int VM_BUG_ON (int) ;
 int add_mm_counter (struct mm_struct*,int ,int ) ;
 int anon_rss ;
 int get_page (struct page*) ;
 int page_dup_rmap (struct page*) ;
 int pmd_mkold (int ) ;
 struct page* pmd_page (int ) ;
 int pmd_trans_huge (int ) ;
 int pmd_trans_splitting (int ) ;
 int pmd_wrprotect (int ) ;
 int pmdp_set_wrprotect (struct mm_struct*,unsigned long,int *) ;
 int prepare_pmd_huge_pte (int ,struct mm_struct*) ;
 int pte_alloc_one (struct mm_struct*,unsigned long) ;
 int pte_free (struct mm_struct*,int ) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wait_split_huge_page (int ,int *) ;

int copy_huge_pmd(struct mm_struct *dst_mm, struct mm_struct *src_mm,
    pmd_t *dst_pmd, pmd_t *src_pmd, unsigned long addr,
    struct vm_area_struct *vma)
{
 struct page *src_page;
 pmd_t pmd;
 pgtable_t pgtable;
 int ret;

 ret = -ENOMEM;
 pgtable = pte_alloc_one(dst_mm, addr);
 if (unlikely(!pgtable))
  goto out;

 spin_lock(&dst_mm->page_table_lock);
 spin_lock_nested(&src_mm->page_table_lock, SINGLE_DEPTH_NESTING);

 ret = -EAGAIN;
 pmd = *src_pmd;
 if (unlikely(!pmd_trans_huge(pmd))) {
  pte_free(dst_mm, pgtable);
  goto out_unlock;
 }
 if (unlikely(pmd_trans_splitting(pmd))) {

  spin_unlock(&src_mm->page_table_lock);
  spin_unlock(&dst_mm->page_table_lock);
  pte_free(dst_mm, pgtable);

  wait_split_huge_page(vma->anon_vma, src_pmd);
  goto out;
 }
 src_page = pmd_page(pmd);
 VM_BUG_ON(!PageHead(src_page));
 get_page(src_page);
 page_dup_rmap(src_page);
 add_mm_counter(dst_mm, anon_rss, HPAGE_PMD_NR);

 pmdp_set_wrprotect(src_mm, addr, src_pmd);
 pmd = pmd_mkold(pmd_wrprotect(pmd));
 set_pmd_at(dst_mm, addr, dst_pmd, pmd);
 prepare_pmd_huge_pte(pgtable, dst_mm);
 dst_mm->nr_ptes++;

 ret = 0;
out_unlock:
 spin_unlock(&src_mm->page_table_lock);
 spin_unlock(&dst_mm->page_table_lock);
out:
 return ret;
}
