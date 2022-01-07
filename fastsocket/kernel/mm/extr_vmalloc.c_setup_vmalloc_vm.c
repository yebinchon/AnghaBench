
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int flags; struct vm_struct* private; scalar_t__ va_start; scalar_t__ va_end; } ;
struct vm_struct {unsigned long flags; void* caller; scalar_t__ size; void* addr; } ;


 int VM_VM_AREA ;

__attribute__((used)) static void setup_vmalloc_vm(struct vm_struct *vm, struct vmap_area *va,
         unsigned long flags, void *caller)
{
 vm->flags = flags;
 vm->addr = (void *)va->va_start;
 vm->size = va->va_end - va->va_start;
 vm->caller = caller;
 va->private = vm;
 va->flags |= VM_VM_AREA;
}
