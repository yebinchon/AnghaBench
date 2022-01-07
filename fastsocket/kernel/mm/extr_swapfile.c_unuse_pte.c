
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int vm_page_prot; int vm_mm; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int activate_page (struct page*) ;
 int anon_rss ;
 int dec_mm_counter (int ,int ) ;
 int get_page (struct page*) ;
 int inc_mm_counter (int ,int ) ;
 struct page* ksm_might_need_to_copy (struct page*,struct vm_area_struct*,unsigned long) ;
 int mem_cgroup_cancel_charge_swapin (struct mem_cgroup*) ;
 int mem_cgroup_commit_charge_swapin (struct page*,struct mem_cgroup*) ;
 scalar_t__ mem_cgroup_try_charge_swapin (int ,struct page*,int ,struct mem_cgroup**) ;
 int mk_pte (struct page*,int ) ;
 int page_add_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 int pte_mkold (int ) ;
 int * pte_offset_map_lock (int ,int *,unsigned long,int **) ;
 int pte_same (int ,int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int put_page (struct page*) ;
 int set_pte_at (int ,unsigned long,int *,int ) ;
 int swap_free (int ) ;
 int swap_usage ;
 int swp_entry_to_pte (int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int unuse_pte(struct vm_area_struct *vma, pmd_t *pmd,
  unsigned long addr, swp_entry_t entry, struct page *page)
{
 struct mem_cgroup *ptr = ((void*)0);
 struct page *swapcache;
 spinlock_t *ptl;
 pte_t *pte;
 int ret = 1;

 swapcache = page;
 page = ksm_might_need_to_copy(page, vma, addr);
 if (unlikely(!page))
  return -ENOMEM;

 if (mem_cgroup_try_charge_swapin(vma->vm_mm, page, GFP_KERNEL, &ptr)) {
  ret = -ENOMEM;
  goto out_nolock;
 }

 pte = pte_offset_map_lock(vma->vm_mm, pmd, addr, &ptl);
 if (unlikely(!pte_same(*pte, swp_entry_to_pte(entry)))) {
  if (ret > 0)
   mem_cgroup_cancel_charge_swapin(ptr);
  ret = 0;
  goto out;
 }

 inc_mm_counter(vma->vm_mm, anon_rss);
 dec_mm_counter(vma->vm_mm, swap_usage);
 get_page(page);
 set_pte_at(vma->vm_mm, addr, pte,
     pte_mkold(mk_pte(page, vma->vm_page_prot)));

 if (page == swapcache)
  page_add_anon_rmap(page, vma, addr);
 else
  page_add_new_anon_rmap(page, vma, addr);

 mem_cgroup_commit_charge_swapin(page, ptr);
 swap_free(entry);




 activate_page(page);
out:
 pte_unmap_unlock(pte, ptl);
out_nolock:
 if (page != swapcache) {
  unlock_page(page);
  put_page(page);
 }
 return ret;
}
