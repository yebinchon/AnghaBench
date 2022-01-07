
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; } ;
typedef int pgoff_t ;
struct TYPE_2__ {int f_mapping; } ;


 unsigned long PAGE_SHIFT ;
 int linear_page_index (struct vm_area_struct*,unsigned long) ;
 unsigned char mincore_page (int ,int ) ;

__attribute__((used)) static void mincore_unmapped_range(struct vm_area_struct *vma,
    unsigned long addr, unsigned long end,
    unsigned char *vec)
{
 unsigned long nr = (end - addr) >> PAGE_SHIFT;
 int i;

 if (vma->vm_file) {
  pgoff_t pgoff;

  pgoff = linear_page_index(vma, addr);
  for (i = 0; i < nr; i++, pgoff++)
   vec[i] = mincore_page(vma->vm_file->f_mapping, pgoff);
 } else {
  for (i = 0; i < nr; i++)
   vec[i] = 0;
 }
}
