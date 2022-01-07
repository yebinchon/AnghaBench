
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int flags; int va_end; int va_start; struct vm_struct* private; } ;
struct vm_struct {int flags; int size; struct vm_struct* next; } ;


 scalar_t__ PAGE_SIZE ;
 int VM_UNLIST ;
 int VM_VM_AREA ;
 struct vmap_area* find_vmap_area (unsigned long) ;
 int free_unmap_vmap_area (struct vmap_area*) ;
 int vmap_debug_free_range (int ,int ) ;
 struct vm_struct* vmlist ;
 int vmlist_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

struct vm_struct *remove_vm_area(const void *addr)
{
 struct vmap_area *va;

 va = find_vmap_area((unsigned long)addr);
 if (va && va->flags & VM_VM_AREA) {
  struct vm_struct *vm = va->private;

  if (!(vm->flags & VM_UNLIST)) {
   struct vm_struct *tmp, **p;





   write_lock(&vmlist_lock);
   for (p = &vmlist; (tmp = *p) != vm; p = &tmp->next)
    ;
   *p = tmp->next;
   write_unlock(&vmlist_lock);
  }

  vmap_debug_free_range(va->va_start, va->va_end);
  free_unmap_vmap_area(va);
  vm->size -= PAGE_SIZE;

  return vm;
 }
 return ((void*)0);
}
