
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; } ;
struct mm_struct {int dummy; } ;
typedef int pgoff_t ;


 scalar_t__ PAGE_SIZE ;
 int install_file_pte (struct mm_struct*,struct vm_area_struct*,unsigned long,int ,int ) ;

__attribute__((used)) static int populate_range(struct mm_struct *mm, struct vm_area_struct *vma,
   unsigned long addr, unsigned long size, pgoff_t pgoff)
{
 int err;

 do {
  err = install_file_pte(mm, vma, addr, pgoff, vma->vm_page_prot);
  if (err)
   return err;

  size -= PAGE_SIZE;
  addr += PAGE_SIZE;
  pgoff++;
 } while (size);

        return 0;

}
