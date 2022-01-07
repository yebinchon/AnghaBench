
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct uio_device* vm_private_data; } ;
struct uio_device {int vma_count; } ;



__attribute__((used)) static void uio_vma_close(struct vm_area_struct *vma)
{
 struct uio_device *idev = vma->vm_private_data;
 idev->vma_count--;
}
