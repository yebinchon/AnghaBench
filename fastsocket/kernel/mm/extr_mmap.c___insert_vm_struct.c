
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int map_count; } ;


 int BUG_ON (int ) ;
 int __vma_link (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ;
 struct vm_area_struct* find_vma_prepare (struct mm_struct*,scalar_t__,struct vm_area_struct**,struct rb_node***,struct rb_node**) ;

__attribute__((used)) static void __insert_vm_struct(struct mm_struct *mm, struct vm_area_struct *vma)
{
 struct vm_area_struct *__vma, *prev;
 struct rb_node **rb_link, *rb_parent;

 __vma = find_vma_prepare(mm, vma->vm_start,&prev, &rb_link, &rb_parent);
 BUG_ON(__vma && __vma->vm_start < vma->vm_end);
 __vma_link(mm, vma, prev, rb_link, rb_parent);
 mm->map_count++;
}
