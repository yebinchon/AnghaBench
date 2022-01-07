
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; scalar_t__ vm_pgoff; } ;
struct mm_struct {unsigned long locked_vm; } ;
struct TYPE_6__ {TYPE_2__* signal; struct mm_struct* mm; } ;
struct TYPE_5__ {TYPE_1__* rlim; } ;
struct TYPE_4__ {unsigned long rlim_cur; } ;


 int CAP_IPC_LOCK ;
 int EAGAIN ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 struct vm_area_struct* ERR_PTR (int ) ;
 unsigned long PAGE_SHIFT ;
 size_t RLIMIT_MEMLOCK ;
 int VM_ACCOUNT ;
 int VM_DONTEXPAND ;
 int VM_LOCKED ;
 int VM_PFNMAP ;
 int capable (int ) ;
 TYPE_3__* current ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int may_expand_vm (struct mm_struct*,unsigned long) ;
 scalar_t__ security_vm_enough_memory (unsigned long) ;

__attribute__((used)) static struct vm_area_struct *vma_to_resize(unsigned long addr,
 unsigned long old_len, unsigned long new_len, unsigned long *p)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma = find_vma(mm, addr);

 if (!vma || vma->vm_start > addr)
  goto Efault;

 if (is_vm_hugetlb_page(vma))
  goto Einval;


 if (old_len > vma->vm_end - addr)
  goto Efault;


 if (new_len > old_len) {
  unsigned long pgoff;

  if (vma->vm_flags & (VM_DONTEXPAND | VM_PFNMAP))
   goto Efault;
  pgoff = (addr - vma->vm_start) >> PAGE_SHIFT;
  pgoff += vma->vm_pgoff;
  if (pgoff + (new_len >> PAGE_SHIFT) < pgoff)
   goto Einval;
 }

 if (vma->vm_flags & VM_LOCKED) {
  unsigned long locked, lock_limit;
  locked = mm->locked_vm << PAGE_SHIFT;
  lock_limit = current->signal->rlim[RLIMIT_MEMLOCK].rlim_cur;
  locked += new_len - old_len;
  if (locked > lock_limit && !capable(CAP_IPC_LOCK))
   goto Eagain;
 }

 if (!may_expand_vm(mm, (new_len - old_len) >> PAGE_SHIFT))
  goto Enomem;

 if (vma->vm_flags & VM_ACCOUNT) {
  unsigned long charged = (new_len - old_len) >> PAGE_SHIFT;
  if (security_vm_enough_memory(charged))
   goto Efault;
  *p = charged;
 }

 return vma;

Efault:
 return ERR_PTR(-EFAULT);
Einval:
 return ERR_PTR(-EINVAL);
Enomem:
 return ERR_PTR(-ENOMEM);
Eagain:
 return ERR_PTR(-EAGAIN);
}
