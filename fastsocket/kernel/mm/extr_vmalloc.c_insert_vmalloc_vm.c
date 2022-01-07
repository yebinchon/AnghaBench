
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int dummy; } ;
struct vm_struct {int dummy; } ;


 int insert_vmalloc_vmlist (struct vm_struct*) ;
 int setup_vmalloc_vm (struct vm_struct*,struct vmap_area*,unsigned long,void*) ;

__attribute__((used)) static void insert_vmalloc_vm(struct vm_struct *vm, struct vmap_area *va,
         unsigned long flags, void *caller)
{
 setup_vmalloc_vm(vm, va, flags, caller);
 insert_vmalloc_vmlist(vm);
}
