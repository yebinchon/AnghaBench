
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_mm; int anon_vma; } ;
typedef int pmd_t ;
struct TYPE_2__ {int page_table_lock; } ;


 unsigned long PAGE_SHIFT ;
 scalar_t__ likely (int ) ;
 int memset (unsigned char*,int,unsigned long) ;
 int pmd_trans_huge (int ) ;
 int pmd_trans_splitting (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wait_split_huge_page (int ,int *) ;

int mincore_huge_pmd(struct vm_area_struct *vma, pmd_t *pmd,
  unsigned long addr, unsigned long end,
  unsigned char *vec)
{
 int ret = 0;

 spin_lock(&vma->vm_mm->page_table_lock);
 if (likely(pmd_trans_huge(*pmd))) {
  ret = !pmd_trans_splitting(*pmd);
  spin_unlock(&vma->vm_mm->page_table_lock);
  if (unlikely(!ret))
   wait_split_huge_page(vma->anon_vma, pmd);
  else {




   memset(vec, 1, (end - addr) >> PAGE_SHIFT);
  }
 } else
  spin_unlock(&vma->vm_mm->page_table_lock);

 return ret;
}
