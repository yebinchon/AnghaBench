
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct go7007_buffer* vm_private_data; } ;
struct go7007_buffer {int mapped; } ;



__attribute__((used)) static void go7007_vm_open(struct vm_area_struct *vma)
{
 struct go7007_buffer *gobuf = vma->vm_private_data;

 ++gobuf->mapped;
}
