
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {TYPE_2__* vm_region; TYPE_3__* vm_file; } ;
struct TYPE_6__ {TYPE_1__* f_op; } ;
struct TYPE_5__ {int vm_end; int vm_top; } ;
struct TYPE_4__ {int (* mmap ) (TYPE_3__*,struct vm_area_struct*) ;} ;


 int ENODEV ;
 int ENOSYS ;
 int stub1 (TYPE_3__*,struct vm_area_struct*) ;

__attribute__((used)) static int do_mmap_shared_file(struct vm_area_struct *vma)
{
 int ret;

 ret = vma->vm_file->f_op->mmap(vma->vm_file, vma);
 if (ret == 0) {
  vma->vm_region->vm_top = vma->vm_region->vm_end;
  return 0;
 }
 if (ret != -ENOSYS)
  return ret;





 return -ENODEV;
}
