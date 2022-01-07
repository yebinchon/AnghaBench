
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_page_prot; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 unsigned int FAULT_FLAG_WRITE ;
 int GFP_KERNEL ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGBUS ;
 int VM_WRITE ;
 int __SetPageUptodate (struct page*) ;
 struct page* alloc_zeroed_user_highpage_movable (struct vm_area_struct*,unsigned long) ;
 int anon_rss ;
 int anon_vma_prepare (struct vm_area_struct*) ;
 scalar_t__ check_stack_guard_page (struct vm_area_struct*,unsigned long) ;
 int inc_mm_counter (struct mm_struct*,int ) ;
 scalar_t__ mem_cgroup_newpage_charge (struct page*,struct mm_struct*,int ) ;
 int mem_cgroup_uncharge_page (struct page*) ;
 int mk_pte (struct page*,int ) ;
 int my_zero_pfn (unsigned long) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 int page_cache_release (struct page*) ;
 int pfn_pte (int ,int ) ;
 int pte_mkdirty (int ) ;
 int pte_mkspecial (int ) ;
 int pte_mkwrite (int ) ;
 int pte_none (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_unmap (int *) ;
 int pte_unmap_unlock (int *,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int trace_mm_anon_fault (struct mm_struct*,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 int update_mmu_cache (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static int do_anonymous_page(struct mm_struct *mm, struct vm_area_struct *vma,
  unsigned long address, pte_t *page_table, pmd_t *pmd,
  unsigned int flags)
{
 struct page *page;
 spinlock_t *ptl;
 pte_t entry;

 pte_unmap(page_table);


 if (check_stack_guard_page(vma, address) < 0)
  return VM_FAULT_SIGBUS;


 if (!(flags & FAULT_FLAG_WRITE)) {
  entry = pte_mkspecial(pfn_pte(my_zero_pfn(address),
      vma->vm_page_prot));
  page_table = pte_offset_map_lock(mm, pmd, address, &ptl);
  if (!pte_none(*page_table))
   goto unlock;
  goto setpte;
 }


 if (unlikely(anon_vma_prepare(vma)))
  goto oom;
 page = alloc_zeroed_user_highpage_movable(vma, address);
 if (!page)
  goto oom;
 __SetPageUptodate(page);

 trace_mm_anon_fault(mm, address);
 if (mem_cgroup_newpage_charge(page, mm, GFP_KERNEL))
  goto oom_free_page;

 entry = mk_pte(page, vma->vm_page_prot);
 if (vma->vm_flags & VM_WRITE)
  entry = pte_mkwrite(pte_mkdirty(entry));

 page_table = pte_offset_map_lock(mm, pmd, address, &ptl);
 if (!pte_none(*page_table))
  goto release;

 inc_mm_counter(mm, anon_rss);
 page_add_new_anon_rmap(page, vma, address);
setpte:
 set_pte_at(mm, address, page_table, entry);


 update_mmu_cache(vma, address, entry);
unlock:
 pte_unmap_unlock(page_table, ptl);
 return 0;
release:
 mem_cgroup_uncharge_page(page);
 page_cache_release(page);
 goto unlock;
oom_free_page:
 page_cache_release(page);
oom:
 return VM_FAULT_OOM;
}
