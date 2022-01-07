
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned int vm_flags; int vm_end; int vm_start; struct vm_area_struct* vm_next; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned int def_flags; struct vm_area_struct* mmap; } ;


 int MCL_CURRENT ;
 int MCL_FUTURE ;
 unsigned int VM_LOCKED ;
 TYPE_2__* current ;
 int mlock_fixup (struct vm_area_struct*,struct vm_area_struct**,int ,int ,unsigned int) ;

__attribute__((used)) static int do_mlockall(int flags)
{
 struct vm_area_struct * vma, * prev = ((void*)0);
 unsigned int def_flags = 0;

 if (flags & MCL_FUTURE)
  def_flags = VM_LOCKED;
 current->mm->def_flags = def_flags;
 if (flags == MCL_FUTURE)
  goto out;

 for (vma = current->mm->mmap; vma ; vma = prev->vm_next) {
  unsigned int newflags;

  newflags = vma->vm_flags | VM_LOCKED;
  if (!(flags & MCL_CURRENT))
   newflags &= ~VM_LOCKED;


  mlock_fixup(vma, &prev, vma->vm_start, vma->vm_end, newflags);
 }
out:
 return 0;
}
