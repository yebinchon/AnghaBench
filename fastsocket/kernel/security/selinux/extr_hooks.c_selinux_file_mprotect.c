
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; scalar_t__ vm_start; scalar_t__ vm_end; int vm_file; scalar_t__ anon_vma; TYPE_1__* vm_mm; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {scalar_t__ start_brk; scalar_t__ brk; scalar_t__ start_stack; } ;


 int FILE__EXECMOD ;
 int PROCESS__EXECHEAP ;
 int PROCESS__EXECSTACK ;
 unsigned long PROT_EXEC ;
 int VM_EXEC ;
 int VM_SHARED ;
 int cred_has_perm (struct cred const*,struct cred const*,int ) ;
 int current ;
 struct cred* current_cred () ;
 int current_has_perm (int ,int ) ;
 int file_has_perm (struct cred const*,int ,int ) ;
 int file_map_prot_check (int ,unsigned long,int) ;
 scalar_t__ selinux_checkreqprot ;

__attribute__((used)) static int selinux_file_mprotect(struct vm_area_struct *vma,
     unsigned long reqprot,
     unsigned long prot)
{
 const struct cred *cred = current_cred();

 if (selinux_checkreqprot)
  prot = reqprot;


 if ((prot & PROT_EXEC) && !(vma->vm_flags & VM_EXEC)) {
  int rc = 0;
  if (vma->vm_start >= vma->vm_mm->start_brk &&
      vma->vm_end <= vma->vm_mm->brk) {
   rc = cred_has_perm(cred, cred, PROCESS__EXECHEAP);
  } else if (!vma->vm_file &&
      vma->vm_start <= vma->vm_mm->start_stack &&
      vma->vm_end >= vma->vm_mm->start_stack) {
   rc = current_has_perm(current, PROCESS__EXECSTACK);
  } else if (vma->vm_file && vma->anon_vma) {







   rc = file_has_perm(cred, vma->vm_file, FILE__EXECMOD);
  }
  if (rc)
   return rc;
 }


 return file_map_prot_check(vma->vm_file, prot, vma->vm_flags&VM_SHARED);
}
