
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned long val; } ;
typedef TYPE_1__ swp_entry_t ;
struct vm_area_struct {unsigned long vm_flags; } ;
struct page {int dummy; } ;
struct mm_struct {int mmlist; } ;
typedef int pte_t ;


 size_t PageAnon (struct page*) ;
 unsigned long VM_SHARED ;
 int get_page (struct page*) ;
 scalar_t__ is_cow_mapping (unsigned long) ;
 int is_migration_entry (TYPE_1__) ;
 scalar_t__ is_write_migration_entry (TYPE_1__) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int make_migration_entry_read (TYPE_1__*) ;
 int mmlist_lock ;
 int page_dup_rmap (struct page*) ;
 int pte_file (int ) ;
 int pte_mkclean (int ) ;
 int pte_mkold (int ) ;
 int pte_present (int ) ;
 TYPE_1__ pte_to_swp_entry (int ) ;
 int pte_wrprotect (int ) ;
 int ptep_set_wrprotect (struct mm_struct*,unsigned long,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ swap_duplicate (TYPE_1__) ;
 int swp_entry_to_pte (TYPE_1__) ;
 scalar_t__ unlikely (int) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static inline unsigned long
copy_one_pte(struct mm_struct *dst_mm, struct mm_struct *src_mm,
  pte_t *dst_pte, pte_t *src_pte, struct vm_area_struct *vma,
  unsigned long addr, int *rss)
{
 unsigned long vm_flags = vma->vm_flags;
 pte_t pte = *src_pte;
 struct page *page;


 if (unlikely(!pte_present(pte))) {
  if (!pte_file(pte)) {
   swp_entry_t entry = pte_to_swp_entry(pte);

   if (swap_duplicate(entry) < 0)
    return entry.val;


   if (unlikely(list_empty(&dst_mm->mmlist))) {
    spin_lock(&mmlist_lock);
    if (list_empty(&dst_mm->mmlist))
     list_add(&dst_mm->mmlist,
       &src_mm->mmlist);
    spin_unlock(&mmlist_lock);
   }
   if (!is_migration_entry(entry))
    rss[2]++;
   else if (is_write_migration_entry(entry) &&
     is_cow_mapping(vm_flags)) {




    make_migration_entry_read(&entry);
    pte = swp_entry_to_pte(entry);
    set_pte_at(src_mm, addr, src_pte, pte);
   }
  }
  goto out_set_pte;
 }





 if (is_cow_mapping(vm_flags)) {
  ptep_set_wrprotect(src_mm, addr, src_pte);
  pte = pte_wrprotect(pte);
 }





 if (vm_flags & VM_SHARED)
  pte = pte_mkclean(pte);
 pte = pte_mkold(pte);

 page = vm_normal_page(vma, addr, pte);
 if (page) {
  get_page(page);
  page_dup_rmap(page);
  rss[PageAnon(page)]++;
 }

out_set_pte:
 set_pte_at(dst_mm, addr, dst_pte, pte);
 return 0;
}
