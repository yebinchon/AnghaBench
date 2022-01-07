
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; scalar_t__ vm_pgoff; int vm_file; } ;
struct mm_struct {int total_vm; int locked_vm; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 scalar_t__ IS_ERR (struct vm_area_struct*) ;
 unsigned long MAP_SHARED ;
 unsigned long MREMAP_FIXED ;
 unsigned long MREMAP_MAYMOVE ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PTR_ERR (struct vm_area_struct*) ;
 int VM_EXEC ;
 int VM_LOCKED ;
 int VM_MAYSHARE ;
 TYPE_1__* current ;
 unsigned long do_munmap (struct mm_struct*,unsigned long,unsigned long) ;
 unsigned long get_unmapped_area_prot (int ,int ,unsigned long,scalar_t__,unsigned long,int) ;
 int mlock_vma_pages_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 unsigned long move_vma (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 unsigned long mremap_to (unsigned long,unsigned long,unsigned long,unsigned long) ;
 unsigned long security_file_mmap (int *,int ,int ,int ,unsigned long,int) ;
 int vm_stat_account (struct mm_struct*,int,int ,int) ;
 int vm_unacct_memory (unsigned long) ;
 scalar_t__ vma_adjust (struct vm_area_struct*,unsigned long,unsigned long,scalar_t__,int *) ;
 scalar_t__ vma_expandable (struct vm_area_struct*,unsigned long) ;
 struct vm_area_struct* vma_to_resize (unsigned long,unsigned long,unsigned long,unsigned long*) ;

unsigned long do_mremap(unsigned long addr,
 unsigned long old_len, unsigned long new_len,
 unsigned long flags, unsigned long new_addr)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 unsigned long ret = -EINVAL;
 unsigned long charged = 0;

 if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE))
  goto out;

 if (addr & ~PAGE_MASK)
  goto out;

 old_len = PAGE_ALIGN(old_len);
 new_len = PAGE_ALIGN(new_len);






 if (!new_len)
  goto out;

 if (flags & MREMAP_FIXED) {
  if (flags & MREMAP_MAYMOVE)
   ret = mremap_to(addr, old_len, new_addr, new_len);
  goto out;
 }






 if (old_len >= new_len) {
  ret = do_munmap(mm, addr+new_len, old_len - new_len);
  if (ret && old_len != new_len)
   goto out;
  ret = addr;
  goto out;
 }




 vma = vma_to_resize(addr, old_len, new_len, &charged);
 if (IS_ERR(vma)) {
  ret = PTR_ERR(vma);
  goto out;
 }



 if (old_len == vma->vm_end - addr) {

  if (vma_expandable(vma, new_len - old_len)) {
   int pages = (new_len - old_len) >> PAGE_SHIFT;

   if (vma_adjust(vma, vma->vm_start, addr + new_len,
           vma->vm_pgoff, ((void*)0))) {
    ret = -ENOMEM;
    goto out;
   }

   mm->total_vm += pages;
   vm_stat_account(mm, vma->vm_flags, vma->vm_file, pages);
   if (vma->vm_flags & VM_LOCKED) {
    mm->locked_vm += pages;
    mlock_vma_pages_range(vma, addr + old_len,
         addr + new_len);
   }
   ret = addr;
   goto out;
  }
 }





 ret = -ENOMEM;
 if (flags & MREMAP_MAYMOVE) {
  unsigned long map_flags = 0;
  if (vma->vm_flags & VM_MAYSHARE)
   map_flags |= MAP_SHARED;

  new_addr = get_unmapped_area_prot(vma->vm_file, 0, new_len,
     vma->vm_pgoff +
     ((addr - vma->vm_start) >> PAGE_SHIFT),
     map_flags, vma->vm_flags & VM_EXEC);
  if (new_addr & ~PAGE_MASK) {
   ret = new_addr;
   goto out;
  }

  ret = security_file_mmap(((void*)0), 0, 0, 0, new_addr, 1);
  if (ret)
   goto out;
  ret = move_vma(vma, addr, old_len, new_len, new_addr);
 }
out:
 if (ret & ~PAGE_MASK)
  vm_unacct_memory(charged);
 return ret;
}
