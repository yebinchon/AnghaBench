
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int dummy; } ;


 int GFP_KERNEL ;
 int VMALLOC_END ;
 int VMALLOC_START ;
 struct vm_struct* __get_vm_area_node (unsigned long,int,unsigned long,int ,int ,int,int ,void*) ;

struct vm_struct *get_vm_area_caller(unsigned long size, unsigned long flags,
    void *caller)
{
 return __get_vm_area_node(size, 1, flags, VMALLOC_START, VMALLOC_END,
      -1, GFP_KERNEL, caller);
}
