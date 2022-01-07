
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; int vm_flags; } ;
struct task_struct {int dummy; } ;
struct mm_struct {int mmap_sem; } ;


 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 scalar_t__ copy_from_user (void*,void*,int) ;
 scalar_t__ copy_to_user (void*,void*,int) ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 int up_read (int *) ;

int access_process_vm(struct task_struct *tsk, unsigned long addr, void *buf, int len, int write)
{
 struct vm_area_struct *vma;
 struct mm_struct *mm;

 if (addr + len < addr)
  return 0;

 mm = get_task_mm(tsk);
 if (!mm)
  return 0;

 down_read(&mm->mmap_sem);


 vma = find_vma(mm, addr);
 if (vma) {

  if (addr + len >= vma->vm_end)
   len = vma->vm_end - addr;


  if (write && vma->vm_flags & VM_MAYWRITE)
   len -= copy_to_user((void *) addr, buf, len);
  else if (!write && vma->vm_flags & VM_MAYREAD)
   len -= copy_from_user(buf, (void *) addr, len);
  else
   len = 0;
 } else {
  len = 0;
 }

 up_read(&mm->mmap_sem);
 mmput(mm);
 return len;
}
