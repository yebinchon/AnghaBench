
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_BUG_ON (int) ;
 int VM_MAYSHARE ;
 unsigned long get_vma_private_data (struct vm_area_struct*) ;
 int is_vm_hugetlb_page (struct vm_area_struct*) ;
 int set_vma_private_data (struct vm_area_struct*,unsigned long) ;

__attribute__((used)) static void set_vma_resv_flags(struct vm_area_struct *vma, unsigned long flags)
{
 VM_BUG_ON(!is_vm_hugetlb_page(vma));
 VM_BUG_ON(vma->vm_flags & VM_MAYSHARE);

 set_vma_private_data(vma, get_vma_private_data(vma) | flags);
}
