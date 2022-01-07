
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; int vm_file; struct mm_struct* vm_mm; } ;
struct rlimit {unsigned long rlim_cur; } ;
struct mm_struct {unsigned long locked_vm; unsigned long total_vm; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {struct rlimit* rlim; } ;


 int CAP_IPC_LOCK ;
 int EFAULT ;
 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 size_t RLIMIT_MEMLOCK ;
 int VM_GROWSUP ;
 int VM_LOCKED ;
 int capable (int ) ;
 TYPE_2__* current ;
 scalar_t__ is_hugepage_only_range (struct mm_struct*,unsigned long,unsigned long) ;
 int may_expand_vm (struct mm_struct*,unsigned long) ;
 scalar_t__ over_stack_limit (unsigned long) ;
 scalar_t__ security_vm_enough_memory_mm (struct mm_struct*,unsigned long) ;
 int vm_stat_account (struct mm_struct*,int,int ,unsigned long) ;

__attribute__((used)) static int acct_stack_growth(struct vm_area_struct *vma, unsigned long size, unsigned long grow)
{
 struct mm_struct *mm = vma->vm_mm;
 struct rlimit *rlim = current->signal->rlim;
 unsigned long new_start;


 if (!may_expand_vm(mm, grow))
  return -ENOMEM;


 if (over_stack_limit(size))
  return -ENOMEM;


 if (vma->vm_flags & VM_LOCKED) {
  unsigned long locked;
  unsigned long limit;
  locked = mm->locked_vm + grow;
  limit = rlim[RLIMIT_MEMLOCK].rlim_cur >> PAGE_SHIFT;
  if (locked > limit && !capable(CAP_IPC_LOCK))
   return -ENOMEM;
 }


 new_start = (vma->vm_flags & VM_GROWSUP) ? vma->vm_start :
   vma->vm_end - size;
 if (is_hugepage_only_range(vma->vm_mm, new_start, size))
  return -EFAULT;





 if (security_vm_enough_memory_mm(mm, grow))
  return -ENOMEM;


 mm->total_vm += grow;
 if (vma->vm_flags & VM_LOCKED)
  mm->locked_vm += grow;
 vm_stat_account(mm, vma->vm_flags, vma->vm_file, grow);
 return 0;
}
