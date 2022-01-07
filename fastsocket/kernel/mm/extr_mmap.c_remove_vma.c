
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; int vm_mm; scalar_t__ vm_file; TYPE_1__* vm_ops; struct vm_area_struct* vm_next; } ;
struct TYPE_2__ {int (* close ) (struct vm_area_struct*) ;} ;


 int VM_EXECUTABLE ;
 int fput (scalar_t__) ;
 int kmem_cache_free (int ,struct vm_area_struct*) ;
 int might_sleep () ;
 int mpol_put (int ) ;
 int removed_exe_file_vma (int ) ;
 int stub1 (struct vm_area_struct*) ;
 int vm_area_cachep ;
 int vma_policy (struct vm_area_struct*) ;

__attribute__((used)) static struct vm_area_struct *remove_vma(struct vm_area_struct *vma)
{
 struct vm_area_struct *next = vma->vm_next;

 might_sleep();
 if (vma->vm_ops && vma->vm_ops->close)
  vma->vm_ops->close(vma);
 if (vma->vm_file) {
  fput(vma->vm_file);
  if (vma->vm_flags & VM_EXECUTABLE)
   removed_exe_file_vma(vma->vm_mm);
 }
 mpol_put(vma_policy(vma));
 kmem_cache_free(vm_area_cachep, vma);
 return next;
}
