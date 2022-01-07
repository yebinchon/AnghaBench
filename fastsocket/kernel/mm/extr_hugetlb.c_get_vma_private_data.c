
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_private_data; } ;



__attribute__((used)) static unsigned long get_vma_private_data(struct vm_area_struct *vma)
{
 return (unsigned long)vma->vm_private_data;
}
