
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_pgoff; int vm_start; scalar_t__ vm_end; int vm_flags; int anon_vma; int vm_file; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int dummy; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int VM_ACCOUNT ;
 struct vm_area_struct* find_vma_prepare (struct mm_struct*,int,struct vm_area_struct**,struct rb_node***,struct rb_node**) ;
 scalar_t__ security_vm_enough_memory_mm (struct mm_struct*,int ) ;
 int vma_link (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ;
 int vma_pages (struct vm_area_struct*) ;

int insert_vm_struct(struct mm_struct * mm, struct vm_area_struct * vma)
{
 struct vm_area_struct * __vma, * prev;
 struct rb_node ** rb_link, * rb_parent;
 if (!vma->vm_file) {
  BUG_ON(vma->anon_vma);
  vma->vm_pgoff = vma->vm_start >> PAGE_SHIFT;
 }
 __vma = find_vma_prepare(mm,vma->vm_start,&prev,&rb_link,&rb_parent);
 if (__vma && __vma->vm_start < vma->vm_end)
  return -ENOMEM;
 if ((vma->vm_flags & VM_ACCOUNT) &&
      security_vm_enough_memory_mm(mm, vma_pages(vma)))
  return -ENOMEM;
 vma_link(mm, vma, prev, rb_link, rb_parent);
 return 0;
}
