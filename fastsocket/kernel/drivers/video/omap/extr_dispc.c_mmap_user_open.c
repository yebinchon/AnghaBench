
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_private_data; } ;
struct TYPE_2__ {int * map_count; } ;


 int atomic_inc (int *) ;
 TYPE_1__ dispc ;

__attribute__((used)) static void mmap_user_open(struct vm_area_struct *vma)
{
 int plane = (int)vma->vm_private_data;

 atomic_inc(&dispc.map_count[plane]);
}
