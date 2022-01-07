
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int flags; struct vm_struct* private; } ;
struct vm_struct {int dummy; } ;


 int VM_VM_AREA ;
 struct vmap_area* find_vmap_area (unsigned long) ;

__attribute__((used)) static struct vm_struct *find_vm_area(const void *addr)
{
 struct vmap_area *va;

 va = find_vmap_area((unsigned long)addr);
 if (va && va->flags & VM_VM_AREA)
  return va->private;

 return ((void*)0);
}
