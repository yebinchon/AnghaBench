
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {void* vm_private_data; } ;



__attribute__((used)) static void set_vma_private_data(struct vm_area_struct *vma,
       unsigned long value)
{
 vma->vm_private_data = (void *)value;
}
