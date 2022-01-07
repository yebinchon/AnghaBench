
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 int VM_USERMAP ;
 int __GFP_HIGHMEM ;
 int __GFP_ZERO ;
 void* __vmalloc (unsigned long,int,int ) ;
 TYPE_2__* current ;
 int down_write (int *) ;
 struct vm_area_struct* find_vma (TYPE_1__*,unsigned long) ;
 int up_write (int *) ;

void *vmalloc_user(unsigned long size)
{
 void *ret;

 ret = __vmalloc(size, GFP_KERNEL | __GFP_HIGHMEM | __GFP_ZERO,
   PAGE_KERNEL);
 if (ret) {
  struct vm_area_struct *vma;

  down_write(&current->mm->mmap_sem);
  vma = find_vma(current->mm, (unsigned long)ret);
  if (vma)
   vma->vm_flags |= VM_USERMAP;
  up_write(&current->mm->mmap_sem);
 }

 return ret;
}
