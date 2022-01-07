
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; TYPE_1__* vm_file; struct vm_area_struct* vm_next; } ;
struct mm_struct {int mmap_sem; struct vm_area_struct* mmap; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;
struct TYPE_3__ {int f_path; } ;


 int VM_EXECUTABLE ;
 TYPE_2__* current ;
 int down_read (int *) ;
 char* tomoyo_realpath_from_path (int *) ;
 int up_read (int *) ;

__attribute__((used)) static const char *tomoyo_get_exe(void)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 const char *cp = ((void*)0);

 if (!mm)
  return ((void*)0);
 down_read(&mm->mmap_sem);
 for (vma = mm->mmap; vma; vma = vma->vm_next) {
  if ((vma->vm_flags & VM_EXECUTABLE) && vma->vm_file) {
   cp = tomoyo_realpath_from_path(&vma->vm_file->f_path);
   break;
  }
 }
 up_read(&mm->mmap_sem);
 return cp;
}
