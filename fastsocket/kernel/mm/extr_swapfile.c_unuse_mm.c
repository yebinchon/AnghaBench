
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {scalar_t__ anon_vma; struct vm_area_struct* vm_next; } ;
struct page {int dummy; } ;
struct mm_struct {int mmap_sem; struct vm_area_struct* mmap; } ;


 int activate_page (struct page*) ;
 int down_read (int *) ;
 int down_read_trylock (int *) ;
 int lock_page (struct page*) ;
 int unlock_page (struct page*) ;
 int unuse_vma (struct vm_area_struct*,int ,struct page*) ;
 int up_read (int *) ;

__attribute__((used)) static int unuse_mm(struct mm_struct *mm,
    swp_entry_t entry, struct page *page)
{
 struct vm_area_struct *vma;
 int ret = 0;

 if (!down_read_trylock(&mm->mmap_sem)) {




  activate_page(page);
  unlock_page(page);
  down_read(&mm->mmap_sem);
  lock_page(page);
 }
 for (vma = mm->mmap; vma; vma = vma->vm_next) {
  if (vma->anon_vma && (ret = unuse_vma(vma, entry, page)))
   break;
 }
 up_read(&mm->mmap_sem);
 return (ret < 0)? ret: 0;
}
