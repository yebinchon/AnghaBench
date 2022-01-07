
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int expand_downwards (struct vm_area_struct*,unsigned long) ;

int expand_stack_downwards(struct vm_area_struct *vma, unsigned long address)
{
 return expand_downwards(vma, address);
}
