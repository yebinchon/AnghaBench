
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_rb; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int mm_rb; } ;


 int rb_insert_color (int *,int *) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;

void __vma_link_rb(struct mm_struct *mm, struct vm_area_struct *vma,
  struct rb_node **rb_link, struct rb_node *rb_parent)
{
 rb_link_node(&vma->vm_rb, rb_parent, rb_link);
 rb_insert_color(&vma->vm_rb, &mm->mm_rb);
}
