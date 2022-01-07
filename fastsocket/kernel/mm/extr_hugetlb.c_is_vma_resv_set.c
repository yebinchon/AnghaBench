
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int VM_BUG_ON (int) ;
 unsigned long get_vma_private_data (struct vm_area_struct*) ;
 int is_vm_hugetlb_page (struct vm_area_struct*) ;

__attribute__((used)) static int is_vma_resv_set(struct vm_area_struct *vma, unsigned long flag)
{
 VM_BUG_ON(!is_vm_hugetlb_page(vma));

 return (get_vma_private_data(vma) & flag) != 0;
}
