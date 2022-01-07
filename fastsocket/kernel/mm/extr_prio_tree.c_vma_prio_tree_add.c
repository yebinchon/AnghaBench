
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct vm_area_struct* head; int list; int * parent; } ;
struct TYPE_4__ {TYPE_1__ vm_set; } ;
struct vm_area_struct {TYPE_2__ shared; } ;


 int BUG_ON (int) ;
 scalar_t__ HEAP_INDEX (struct vm_area_struct*) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ RADIX_INDEX (struct vm_area_struct*) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;

void vma_prio_tree_add(struct vm_area_struct *vma, struct vm_area_struct *old)
{

 BUG_ON(RADIX_INDEX(vma) != RADIX_INDEX(old));
 BUG_ON(HEAP_INDEX(vma) != HEAP_INDEX(old));

 vma->shared.vm_set.head = ((void*)0);
 vma->shared.vm_set.parent = ((void*)0);

 if (!old->shared.vm_set.parent)
  list_add(&vma->shared.vm_set.list,
    &old->shared.vm_set.list);
 else if (old->shared.vm_set.head)
  list_add_tail(&vma->shared.vm_set.list,
    &old->shared.vm_set.head->shared.vm_set.list);
 else {
  INIT_LIST_HEAD(&vma->shared.vm_set.list);
  vma->shared.vm_set.head = old;
  old->shared.vm_set.head = vma;
 }
}
